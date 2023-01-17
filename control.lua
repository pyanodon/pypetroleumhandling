-- This script manages oil seep resources, mining them, and transforming them from seeps to the appropriate type when depleted
-- if you need the commented code that was here, go to git revision <= 4e9cd2f4bc7916ea438986d8037d63338463438e
script.on_init(function()
    global.first_chunk = false
    global.oil_derricks = {}
end)

script.on_configuration_changed(function()
    if not global.oil_derricks == nil then global.oil_derricks = {} end
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

local function add_seep(event)
	local drill = event.created_entity
	local drill_base = derrick_types[drill.name]

	local patches = game.surfaces[drill.surface.name].find_entities_filtered {
		area = {{drill.position.x - 1, drill.position.y - 1}, {drill.position.x + 1, drill.position.y + 1}},
		type = 'resource'
	}

	for _, patch in pairs(patches) do
		if patch.name == 'bitumen-seep' then
			local assembler = game.surfaces[drill.surface.name].create_entity {
				name = drill_base.base,
				force = drill.force,
				position = drill.position
			}
			if assembler then
				assembler.set_recipe('drilling-fluids')
				assembler.active = false
				global.oil_derricks[drill.unit_number] = {
					entity = drill,
					base = assembler,
					drilling_fluid = ''
				}
			end
			drill.active = false
		else
			local resource_type = patch.name:match('(.*)(%-%w*)$')
			game.surfaces[drill.surface.name].create_entity {
				name = resource_types[resource_type] .. drill.name:match('%d$'),
				force = drill.force,
				position = drill.position
			}
			drill.destroy()
		end
	end
end
script.on_event(defines.events.on_built_entity, add_seep, event_filter)
script.on_event(defines.events.on_robot_built_entity, add_seep, event_filter)

-- Destroy hidden assembler when removing drill
local function remove_seep(find_results, source)
	for _, assembler in pairs(find_results) do
		assembler.destroy()
	end
	global.oil_derricks[source.unit_number] = nil
end
-- Match hidden assembler rotation to drill rotation
local function rotate_seep(find_results, source)
	for _, assembler in pairs(find_results) do
		assembler.direction = source.direction
	end
end

local actions = {
	[defines.events.on_player_mined_entity] = remove_seep,
	[defines.events.on_robot_mined_entity] = remove_seep,
	[defines.events.on_entity_died] = remove_seep,
	[defines.events.on_player_rotated_entity] = rotate_seep
}

local function on_entity_modified(event)
	local building = event.entity
	-- on_player_rotated_entity can't be filtered :)
    if derrick_types[building.name] then
        local child_entity = game.surfaces[building.surface.name].find_entities_filtered {
            position = building.position,
            type = 'assembling-machine'
        }
        actions[event.name](child_entity, building)
    end
end
script.on_event(defines.events.on_player_mined_entity, on_entity_modified, event_filter)
script.on_event(defines.events.on_robot_mined_entity, on_entity_modified, event_filter)
script.on_event(defines.events.on_entity_died, on_entity_modified, event_filter)
script.on_event(defines.events.on_player_rotated_entity, on_entity_modified)

-- Activates/deactivates derricks based on how much drilling fluid they have
-- Selects the best available drilling fluid to use
local fluid_threshold = 50
local fluid_max_tier = 3
local fluid_min_tier = 0 -- Tiers are zero-indexed here, god knows why

script.on_nth_tick(31, function()
    for drill_id, drill in pairs(global.oil_derricks) do
		local drill_active = false
        local drill_contents = drill.base.get_fluid_contents()
		local drill_empty = next(drill_contents) == nil

		if not drill_empty then
			-- Check possible drilling fluids in descending order of quality
			for current_tier = fluid_max_tier, fluid_min_tier, -1 do
				local fluid_type = 'drilling-fluid-' .. current_tier
				local contained_fluid = drill_contents[fluid_type]
				if contained_fluid then
					if contained_fluid >= fluid_threshold then
						global.oil_derricks[drill_id].drilling_fluid = fluid_type
						drill.base.remove_fluid({name = fluid_type, amount = 5})
						drill_active = true
					end
					break
				end
			end
		end

		drill.entity.active = drill_active
    end
end)

-- Overwrites seep amounts when they are generated
script.on_event(defines.events.on_chunk_generated, function(event)
    local bitumen_patches = game.surfaces[event.surface.name].find_entities_filtered {name = 'bitumen-seep', area = event.area}
    for _, patch in pairs(bitumen_patches) do
		patch.amount = math.random(1000, 2500)
	end
end)

script.on_event(defines.events.on_resource_depleted, function(event)
    local resource = event.entity
	if resource.name ~= 'bitumen-seep' then
		return
	end

	local active_drills = game.surfaces[resource.surface.name].find_entities_filtered {
		area = {{resource.position.x - 1, resource.position.y - 1}, {resource.position.x + 1, resource.position.y + 1}},
		type = 'mining-drill'
	}

	for _, drill in pairs(active_drills) do
		local drill_data = derrick_types[drill.name]
		if drill_data then
			local drill_fluid = global.oil_derricks[drill.unit_number].drilling_fluid
			local fluid_tier = drill_fluid:match('%d$') + 1
			local drill_tier = drill.name:match('%d$')
			local random_factor = math.random(1, 4)
			local new_patch_size = 10000 * random_factor * drill_tier * fluid_tier

			resource.surface.create_entity {
				name = drill_data.resource,
				amount = new_patch_size,
				position = resource.position
			}
			resource.surface.create_entity {
				name = drill_data.replacement,
				position = drill.position,
				force = drill.force
			}
			global.oil_derricks[drill.unit_number].base.destroy()
			global.oil_derricks[drill.unit_number] = nil
			drill.destroy()
		end
	end
end)