-- This script manages oil seep resources, mining them, and transforming them from seeps to the appropriate type when depleted
-- if you need the commented code that was here, go to git revision <= 4e9cd2f4bc7916ea438986d8037d63338463438e

local update_rate = 67

py.on_event(py.events.on_init(), function()
	if storage.first_chunk == nil then storage.first_chunk = false end
	storage.oil_derricks = storage.oil_derricks or {}
end)

-- Correlates our derricks and what replaces them with the seep transition, along with their hidden assembler names
local derrick_types = {}
for i = 1, 4 do
	derrick_types["oil-derrick-mk0" .. i] = {
		base = "oil-derrick-mk0" .. i .. "-base",
		resource = "oil-mk0" .. i
	}
	derrick_types["tar-extractor-mk0" .. i] = {
		base = "tar-extractor-mk0" .. i .. "-base",
		resource = "tar-patch"
	}
	derrick_types["natural-gas-derrick-mk0" .. i] = {
		base = "natural-gas-derrick-mk0" .. i .. "-base",
		resource = "natural-gas-mk01"
	}
end

local event_filter = {
	{
		filter = "type",
		type = "mining-drill"
	}
}
-- Adds each drill mk01-mk04 to the event filter as "or" statements
for drill in pairs(derrick_types) do
	local i = #event_filter
	event_filter[i + 1] = {
		filter = "name",
		name = drill,
		-- 1 and 2 or 3 or 4 or 5 etc
		mode = i == 1 and "and" or "or"
	}
end

-- Renders some text showing how close the seep is to opening
local function render_text(drill, time_to_live)
	local patch = drill.patch
	if not patch or not patch.valid then return end

	rendering.draw_text {
		time_to_live = 68,
		target = drill.entity,
		text = patch.amount,
		surface = drill.entity.surface,
		color = {1, 1, 1},
		scale = 2,
		alignment = "center",
		target_offset = {0, -1.5}
	}
end

py.on_event(py.events.on_built(), function(event)
	local drill = event.entity
	local drill_base = derrick_types[drill.name]
	if not drill_base then return end

	local patches = drill.surface.find_entities_filtered {
		area = {{drill.position.x - 1, drill.position.y - 1}, {drill.position.x + 1, drill.position.y + 1}},
		type = "resource"
	}
	local patch = patches[1]
	if not patch then return end
	if patch.name ~= "bitumen-seep" then return end

	local assembler = drill.surface.create_entity {
		name = drill_base.base,
		force = drill.force,
		position = drill.position,
		quality = drill.quality.name,
		direction = drill.direction
	}
	assembler.set_recipe("drilling-fluids")
	assembler.active = false
	assembler.destructible = false
	storage.oil_derricks[drill.unit_number] = {
		entity = drill,
		base = assembler,
		drilling_fluid = "",
		patch = patch
	}
	drill.active = false
	-- Register for destruction event to handle removal via editor etc
	script.register_on_object_destroyed(drill)
	render_text(storage.oil_derricks[drill.unit_number], update_rate - game.tick % update_rate)
end)

-- Destroy hidden assembler when removing drill
local function remove_seep(assembler, source, source_id)
	assembler.destroy()
	storage.oil_derricks[source_id or source.unit_number] = nil
end
-- Match hidden assembler rotation to drill rotation
local function rotate_seep(assembler, source)
	assembler.direction = source.direction
end

local actions = {
	[defines.events.on_player_mined_entity] = remove_seep,
	[defines.events.on_robot_mined_entity] = remove_seep,
	[defines.events.on_space_platform_mined_entity] = remove_seep,
	[defines.events.on_entity_died] = remove_seep,
	[defines.events.on_object_destroyed] = remove_seep,
	[defines.events.on_player_rotated_entity] = rotate_seep
}

local function on_entity_modified(event)
	local building = event.entity
	local unit_no = event.useful_id
	if event.entity then -- All but on_object_destroyed
		-- on_player_rotated_entity can't be filtered :)
		if derrick_types[building.name] then
			local child_entity = building.surface.find_entities_filtered {
				position = building.position,
				type = "assembling-machine",
				limit = 1
			}[1]
			if child_entity then actions[event.name](child_entity, building) end
		end
	elseif unit_no then -- on_object_destroyed provides a unit number and no entity
		local child_entity = (storage.oil_derricks[unit_no] or {}).base
		if child_entity and child_entity.valid then
			actions[event.name](child_entity, nil, unit_no)
		end
	end
end
script.on_event(defines.events.on_player_mined_entity, on_entity_modified, event_filter)
script.on_event(defines.events.on_robot_mined_entity, on_entity_modified, event_filter)
script.on_event(defines.events.on_entity_died, on_entity_modified, event_filter)
script.on_event(defines.events.on_space_platform_mined_entity, on_entity_modified, event_filter)
script.on_event(defines.events.on_player_rotated_entity, on_entity_modified)
script.on_event(defines.events.on_object_destroyed, on_entity_modified)

-- Activates/deactivates derricks based on how much drilling fluid they have
-- Selects the best available drilling fluid to use
local fluid_threshold = 50
local fluid_max_tier = 3
local fluid_min_tier = 0 -- Tiers are zero-indexed here, god knows why

py.register_on_nth_tick(update_rate, "drills", "pyph", function()
	for drill_id, drill in pairs(storage.oil_derricks) do
		if not drill.base.valid then
			if drill.entity and drill.entity.valid then
				drill.entity.destroy()
			end
			storage.oil_derricks[drill_id] = nil
			return
		end

		local drill_active = false
		local drill_contents = drill.base.get_fluid_contents()
		local drill_empty = next(drill_contents) == nil

		if not drill.entity.valid then
			log("invalid drill encountered during update cycle, id: " .. drill_id)
			on_entity_modified {
				name = defines.events.on_object_destroyed,
				unit_number = drill_id
			}
			goto continue
		end
		
		if not drill_empty then
			-- Check possible drilling fluids in descending order of quality
			for current_tier = fluid_max_tier, fluid_min_tier, -1 do
				local fluid_type = "drilling-fluid-" .. current_tier
				local contained_fluid = drill_contents[fluid_type]
				if contained_fluid then
					if contained_fluid >= fluid_threshold then
						storage.oil_derricks[drill_id].drilling_fluid = fluid_type
						drill.base.remove_fluid {name = fluid_type, amount = 10}
						drill.entity.force.get_fluid_production_statistics(drill.entity.surface_index).on_flow(fluid_type, -10)
						drill_active = true
					end
					break
				end
			end
		end
		drill.entity.active = drill_active

		render_text(drill, update_rate + 1)

		::continue::
	end
end)

-- Overwrites seep amounts when they are generated
script.on_event(defines.events.on_chunk_generated, function(event)
	local bitumen_patches = event.surface.find_entities_filtered {name = "bitumen-seep", area = event.area}
	for _, patch in pairs(bitumen_patches) do
		patch.amount = math.random(1000, 2500)
	end
end)

script.on_event(defines.events.on_resource_depleted, function(event)
	local resource = event.entity
	if resource.name ~= "bitumen-seep" then
		return
	end

	local active_drills = resource.surface.find_entities_filtered {
		area = {{resource.position.x - 1, resource.position.y - 1}, {resource.position.x + 1, resource.position.y + 1}},
		type = "mining-drill"
	}

	for _, drill in pairs(active_drills) do
		local drill_data = derrick_types[drill.name]
		if drill_data then
			local drill_fluid = storage.oil_derricks[drill.unit_number].drilling_fluid
			local fluid_tier = ((drill_fluid:match("%d$") + 1) * 4)
			local drill_tier = (drill.name:match("%d$") * 4)
			local random_factor = math.random(4, 16)
			local new_patch_size = 40000 * random_factor * drill_tier * fluid_tier

			local base = storage.oil_derricks[drill.unit_number].base
			if base and base.valid then base.destroy() end
			storage.oil_derricks[drill.unit_number] = nil

			resource.surface.create_entity {
				name = drill_data.resource,
				amount = new_patch_size,
				position = resource.position,
				quality = resource.quality.name
			}

			drill.update_connections()
		end
	end
end)