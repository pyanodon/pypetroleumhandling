require 'scripts/wiki/text-pages'

local update_rate = 67

-- This script manages oil seep resources, mining them, and transforming them from seeps to the appropriate type when depleted
-- if you need the commented code that was here, go to git revision <= 4e9cd2f4bc7916ea438986d8037d63338463438e
script.on_init(function()
    global.first_chunk = false
    global.oil_derricks = {}
	Wiki.events.on_init()
end)

script.on_configuration_changed(function()
    if not global.oil_derricks == nil then global.oil_derricks = {} end
	Wiki.events.on_init()
end)

-- Correlates our derricks and what replaces them with the seep transition, along with their hidden assembler names
local derrick_types = {}
for i=1, 4 do
	derrick_types['bitumen-seep-mk0' .. i] = {
		base = 'bitumen-seep-mk0' .. i .. '-base',
		replacement = 'oil-derrick-mk0' .. i,
		resource = 'oil-mk0' .. i
	}
	derrick_types['tar-seep-mk0' .. i] = { 
		base = 'tar-seep-mk01-base',
		replacement = 'tar-extractor-mk0' .. i,
		resource = 'tar-patch'
	}
	derrick_types['natural-gas-seep-mk0' .. i] = {
		base = 'natural-gas-seep-mk01-base',
		replacement = 'natural-gas-extractor-mk0' .. i,
		resource = 'natural-gas-mk01'
	}
end

local resource_types = {
	['oil'] = 'oil-derrick-mk0',
	['tar'] = 'tar-extractor-mk0',
	['natural-gas'] = 'natural-gas-extractor-mk0'
}

local event_filter = {
	{
		filter = 'type',
		type = 'mining-drill'
	}
}
-- Adds each drill mk01-mk04 to the event filter as "or" statements
for drill in pairs(derrick_types) do
	local i = #event_filter
	event_filter[i+1] = {
		filter = 'name',
		name = drill,
		-- 1 and 2 or 3 or 4 or 5 etc
		mode = i == 1 and 'and' or 'or'
	}
end

-- Renders some text showing how close the seep is to opening
local function render_text(drill, time_to_live)
	local patch = drill.patch
	if not patch or not patch.valid then return end

	rendering.draw_text{
		time_to_live = 68,
		target = drill.entity,
		text = patch.amount,
		surface = drill.entity.surface,
		color = {1, 1, 1},
		scale = 2,
		alignment = 'center',
		target_offset = {0, -1.5}
	}
end

local function add_seep(event)
	local drill = event.created_entity or event.entity
	local drill_base = derrick_types[drill.name]
	if not drill_base then return end

	local patches = drill.surface.find_entities_filtered {
		area = {{drill.position.x - 1, drill.position.y - 1}, {drill.position.x + 1, drill.position.y + 1}},
		type = 'resource'
	}

	for _, patch in pairs(patches) do
		if patch.name == 'bitumen-seep' then
			local assembler = drill.surface.create_entity {
				name = drill_base.base,
				force = drill.force,
				position = drill.position
			}
			assembler.set_recipe('drilling-fluids')
			assembler.active = false
			global.oil_derricks[drill.unit_number] = {
				entity = drill,
				base = assembler,
				drilling_fluid = '',
				patch = patch
			}
			drill.active = false
			-- Register for destruction event to handle removal via editor etc
			script.register_on_entity_destroyed(drill)
			render_text(global.oil_derricks[drill.unit_number], update_rate - game.tick % update_rate)
		else
			local resource_type = patch.name:match('(.*)(%-%w*)$')
			drill.surface.create_entity {
				name = resource_types[resource_type] .. drill.name:match('%d$'),
				force = drill.force,
				position = drill.position
			}
			drill.destroy()
		end
		break
	end
end
script.on_event(defines.events.on_built_entity, add_seep, event_filter)
script.on_event(defines.events.on_robot_built_entity, add_seep, event_filter)
script.on_event(defines.events.script_raised_revive, add_seep)
script.on_event(defines.events.script_raised_built, add_seep)

-- Destroy hidden assembler when removing drill
local function remove_seep(assembler, source, source_id)
	assembler.destroy()
	global.oil_derricks[source_id or source.unit_number] = nil
end
-- Match hidden assembler rotation to drill rotation
local function rotate_seep(assembler, source)
	assembler.direction = source.direction
end

local actions = {
	[defines.events.on_player_mined_entity] = remove_seep,
	[defines.events.on_robot_mined_entity] = remove_seep,
	[defines.events.on_entity_died] = remove_seep,
	[defines.events.on_entity_destroyed] = remove_seep,
	[defines.events.on_player_rotated_entity] = rotate_seep
}

local function on_entity_modified(event)
	local building = event.entity
	local unit_no = event.unit_number
	if event.entity then -- All but on_entity_destroyed
		-- on_player_rotated_entity can't be filtered :)
		if derrick_types[building.name] then
			local child_entity = building.surface.find_entities_filtered {
				position = building.position,
				type = 'assembling-machine',
				limit = 1
			}[1]
			if child_entity then actions[event.name](child_entity, building) end
		end
	elseif unit_no then -- on_entity_destroyed provides a unit number and no entity
		local child_entity = (global.oil_derricks[unit_no] or {}).base
		if child_entity and child_entity.valid then
			actions[event.name](child_entity, nil, unit_no)
		end
	end
end
script.on_event(defines.events.on_player_mined_entity, on_entity_modified, event_filter)
script.on_event(defines.events.on_robot_mined_entity, on_entity_modified, event_filter)
script.on_event(defines.events.on_entity_died, on_entity_modified, event_filter)
script.on_event(defines.events.on_player_rotated_entity, on_entity_modified)
script.on_event(defines.events.on_entity_destroyed, on_entity_modified)

-- Activates/deactivates derricks based on how much drilling fluid they have
-- Selects the best available drilling fluid to use
local fluid_threshold = 50
local fluid_max_tier = 3
local fluid_min_tier = 0 -- Tiers are zero-indexed here, god knows why

script.on_nth_tick(update_rate, function()
    for drill_id, drill in pairs(global.oil_derricks) do
		local drill_active = false
        local drill_contents = drill.base.get_fluid_contents()
		local drill_empty = next(drill_contents) == nil

		if not drill.entity.valid then
			log("invalid drill encountered during update cycle, id: " .. drill_id)
			on_entity_modified({
				name = defines.events.on_entity_destroyed,
				unit_number = drill_id
			})
		else
			if not drill_empty then
				-- Check possible drilling fluids in descending order of quality
				for current_tier = fluid_max_tier, fluid_min_tier, -1 do
					local fluid_type = 'drilling-fluid-' .. current_tier
					local contained_fluid = drill_contents[fluid_type]
					if contained_fluid then
						if contained_fluid >= fluid_threshold then
							global.oil_derricks[drill_id].drilling_fluid = fluid_type
							drill.base.remove_fluid({name = fluid_type, amount = 10})
							drill.entity.force.fluid_production_statistics.on_flow(fluid_type, -10)
							drill_active = true
						end
						break
					end
				end
			end
			drill.entity.active = drill_active

			render_text(drill, update_rate + 1)
		end
    end
end)

-- Overwrites seep amounts when they are generated
script.on_event(defines.events.on_chunk_generated, function(event)
    local bitumen_patches = event.surface.find_entities_filtered {name = 'bitumen-seep', area = event.area}
    for _, patch in pairs(bitumen_patches) do
		patch.amount = math.random(1000, 2500)
	end
end)

local function swap_drill(drill, replacement)
	local surface = drill.surface
	local parameters = {
		name = replacement,
		position = drill.position,
		force = drill.force,
		direction = drill.direction,
		player = drill.last_user
	}
	local source_module_inventory = drill.get_module_inventory()
	local module_contents
	if source_module_inventory then module_contents = source_module_inventory.get_contents() end
	drill.destroy()

	local new_drill = surface.create_entity(parameters)
	local destination_module_inventory = new_drill.get_module_inventory()
	if source_module_inventory and destination_module_inventory then
		for item, amount in pairs(module_contents) do
			destination_module_inventory.insert{name = item, amount = amount}
		end
	end
end
	
script.on_event(defines.events.on_resource_depleted, function(event)
    local resource = event.entity
	if resource.name ~= 'bitumen-seep' then
		return
	end

	local active_drills = resource.surface.find_entities_filtered {
		area = {{resource.position.x - 1, resource.position.y - 1}, {resource.position.x + 1, resource.position.y + 1}},
		type = 'mining-drill'
	}

	for _, drill in pairs(active_drills) do
		local drill_data = derrick_types[drill.name]
		if drill_data then
			local drill_fluid = global.oil_derricks[drill.unit_number].drilling_fluid
			local fluid_tier = ((drill_fluid:match('%d$') + 1) * 4)
			local drill_tier = (drill.name:match('%d$') * 4)
			local random_factor = math.random(4, 16)
			local new_patch_size = 40000 * random_factor * drill_tier * fluid_tier

			local base = global.oil_derricks[drill.unit_number].base
			if base and base.valid then base.destroy() end
			global.oil_derricks[drill.unit_number] = nil

			resource.surface.create_entity {
				name = drill_data.resource,
				amount = new_patch_size,
				position = resource.position
			}
			swap_drill(drill, drill_data.replacement)
		end
	end
end)