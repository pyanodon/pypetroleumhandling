-- This script manages oil seep resources, mining them, and transforming them from seeps to the appropriate type when depleted
-- if you need the commented code that was here, go to git revision <= 4e9cd2f4bc7916ea438986d8037d63338463438e

local update_rate = 67

local BITUMEN_DISABLED_CUSTOM_STATUS = {
    diode = defines.entity_status_diode.red,
    label = {"entity-status.requires-drilling-fluid"}
}

py.on_event(py.events.on_init(), function()
    if storage.first_chunk == nil then storage.first_chunk = false end
    storage.oil_derricks = storage.oil_derricks or {}
end)

-- Correlates our derricks and what replaces them with the seep transition, along with their hidden assembler names
local derrick_types = {}
for i = 1, 4 do
    derrick_types["oil-derrick-mk0" .. i] = {
        base = "oil-derrick-mk0" .. i .. "-base",
        resource = "oil-mk0" .. i,
        fluid = "crude-oil", -- NOTE if creating fluid resources, resource amount created is multiplied by 100 (engine thing)
        rand_min = 4, -- random int from [min, max] or [1, max] or no random value (always 1) if both nil
        rand_max = 16, -- random int from [min, max] or [1, max] or no random value (always 1) if both nil
        base_mult = 160000, -- base multiplier for patch size. default 1
        drill_tier_mult = 1, -- multiplier bonus for drill tier (1-4)^n. default 1, set to 0 to disable drill tier multipleir
        fluid_tier_mult = 1, -- multiplier bonus for fluid tier (1-4)^n. default 1, set to 0 to disable drill tier multipleir
        alert = "bitumen-seep-alert"
    }
    derrick_types["tar-extractor-mk0" .. i] = {
        base = "tar-extractor-mk0" .. i .. "-base",
        resource = "tar-patch",
        fluid = "tar",
        rand_min = 4,
        rand_max = 16,
        base_mult = 160000,
        drill_tier_mult = 1,
        fluid_tier_mult = 1,
        alert = "bitumen-seep-alert"
    }
    derrick_types["natural-gas-derrick-mk0" .. i] = {
        base = "natural-gas-derrick-mk0" .. i .. "-base",
        resource = "natural-gas-mk0" .. i,
        fluid = "raw-gas",
        rand_min = 4,
        rand_max = 16,
        base_mult = 160000,
        drill_tier_mult = 1,
        fluid_tier_mult = 1,
        alert = "bitumen-seep-alert"
    }
end

local resource_patches = {
    ["bitumen-seep"] = true
}

remote.add_interface("py-drilling", {
    ["add-resource-patch"] = function (resource_name)
        resource_patches[resource_name] = true
    end,
    ["remove-resource-patch"] = function (resource_name)
        resource_patches[resource_name] = nil
    end,
    ["add-mining-drill"] = function (mining_drill, extra_data)
        derrick_types[mining_drill] = extra_data
    end,
    ["remove-mining-drill"] = function (mining_drill)
        derrick_types[mining_drill] = nil
    end,
})

-- Renders some text showing how close the seep is to opening
local function render_text(drill, time_to_live)
    local patch = drill.patch
    if not patch or not patch.valid then return end

    rendering.draw_text {
        time_to_live = time_to_live or update_rate + 1,
        target = drill.entity,
        text = patch.amount,
        surface = drill.entity.surface,
        color = {1, 1, 1},
        scale = 2,
        alignment = "center",
        target_offset = {0, -1.5},
        only_in_alt_mode = true
    }
end

py.on_event(py.events.on_built(), function(event)
    local drill = event.entity
    local drill_base = derrick_types[drill.name]
    if not drill_base then return end

    local patch = drill.surface.find_entities_filtered {
        position = drill.position,
        limit = 1,
        type = "resource"
    }[1]
    if not patch or not resource_patches[patch.name] then return end

    local assembler = drill.surface.create_entity {
        name = drill_base.base,
        force = drill.force,
        position = drill.position,
        quality = drill.quality.name,
        direction = drill.direction
    }
    assembler.set_recipe("drilling-fluids")
    assembler.destructible = false
    storage.oil_derricks[drill.unit_number] = {
        entity = drill,
        base = assembler,
        drilling_fluid = "",
        patch = patch
    }
    assembler.active = false
    drill.active = false
    drill.custom_status = BITUMEN_DISABLED_CUSTOM_STATUS
    -- Register for destruction event to handle removal
    script.register_on_object_destroyed(drill)
    render_text(storage.oil_derricks[drill.unit_number], update_rate - game.tick % update_rate)
end)

-- Destroy hidden assembler when removing drill
py.on_event(defines.events.on_object_destroyed, function(event)
    local unit_no = event.useful_id
    if not unit_no then return end -- on_object_destroyed provides a unit number and no entity
    local child_entity = (storage.oil_derricks[unit_no] or {}).base
    if child_entity and child_entity.valid then child_entity.destroy() end
    storage.oil_derricks[unit_no] = nil
end)

script.on_event(defines.events.on_player_rotated_entity, function (event)
    local building = event.entity
    if not derrick_types[building.name] then return end
    local child_entity = building.surface.find_entities_filtered {
        position = building.position,
        name = derrick_types[building.name].base,
        limit = 1
    }[1]
    if child_entity and child_entity.valid then child_entity.direction = building.direction end
end)

-- Activates/deactivates derricks based on how much drilling fluid they have
-- Selects the best available drilling fluid to use
local fluid_threshold = 50
local fluid_max_tier = 3
local fluid_min_tier = 0 -- Tiers are zero-indexed here, god knows why

py.register_on_nth_tick(update_rate, "drills", "pyph", function()
    for drill_id, drill in pairs(storage.oil_derricks) do
        if not drill.base.valid or not drill.entity.valid then
            log("invalid drill encountered during update cycle, id: " .. drill_id)
            if drill.entity.valid then drill.entity.destroy() end
            if drill.base.valid then drill.base.destroy() end
            storage.oil_derricks[drill_id] = nil
            goto continue
        end

        local drill_active = false
        local drill_contents = drill.base.get_fluid_contents()
        local drill_empty = next(drill_contents) == nil

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
        if drill_active then
            drill.entity.custom_status = nil
        else
            drill.entity.custom_status = BITUMEN_DISABLED_CUSTOM_STATUS
        end

        render_text(drill)

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

local function add_commas_to_number(number)
    local formatted = tostring(number):reverse():gsub("(%d%d%d)", "%1,"):reverse()
    return formatted:match("^,") and formatted:sub(2) or formatted
end

script.on_event(defines.events.on_resource_depleted, function(event)
    local resource = event.entity
    if not resource_patches[resource.name] then return end

    local drill = resource.surface.find_entities_filtered {
        position = resource.position,
        limit = 1,
        type = "mining-drill"
    }[1]
    if not drill or not derrick_types[drill.name] then return end

    local drill_data = derrick_types[drill.name]
    local drill_fluid = storage.oil_derricks[drill.unit_number].drilling_fluid
    local fluid_tier = drill_fluid:match("%d$") + 1
    local drill_tier = drill.name:match("%d$")
    local new_patch_size = (drill_data.rand_min and math.random(drill_data.rand_min, drill_data.rand_max) or
        drill_data.rand_max and math.random(drill_data.rand_max) or 1) *
        fluid_tier ^ (drill_data.fluid_tier_mult or 1) *
        drill_tier ^ (drill_data.drill_tier_mult or 1) *
        (drill_data.base_mult or 1)

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

    local fluid = drill_data.fluid
    drill.force.print {
        drill_data.alert,
        drill.name,
        add_commas_to_number(new_patch_size * 100),
        fluid,
        drill.position.x,
        drill.position.y,
        drill.surface.name
    }

    local oil_explosion = drill.surface.create_entity {
        name = "oil-explosion",
        position = drill.position,
        force = drill.force_index
    }

    -- slightly damage all entities in 20 tile radius
    for _, entity in pairs(drill.surface.find_entities_filtered {position = drill.position, radius = 20, collision_mask = "object"}) do
        if entity.is_entity_with_health then
            local damage_amount = math.min(math.random(184, 222), entity.max_health * math.random(27, 33) / 100)
            entity.damage(damage_amount, "enemy", "explosion", oil_explosion, drill)
        end
    end
end)
