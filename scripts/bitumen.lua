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

---@class DerrickPrototype
---@field drill EntityID
---@field base EntityID
---@field resource data.ResourceEntityName
---@field fluid FluidID NOTE if creating fluid resources, resource amount created is multiplied by 100 (engine thing)
---@field rand_min? uint random int from [min, max] or [1, max] or no random value (always 1) if both nil
---@field rand_max? uint random int from [min, max] or [1, max] or no random value (always 1) if both nil
---@field base_mult? uint base multiplier for patch size. default 1
---@field drill_tier_mult? uint multiplier bonus for drill tier (1-4)^n. default 1, set to 0 to disable drill tier multipleir
---@field fluid_amt_exp? uint multiplier bonus for fluid tier (1-4)^n. default 1, set to 0 to disable fludi tier multiplier
---@field alert string
---@field explosion_radius? uint

-- Correlates our derricks and what replaces them with the seep transition, along with their hidden assembler names
---@type {[EntityID]: DerrickPrototype}
local derrick_types = {}
for i = 1, 4 do
    derrick_types["oil-derrick-mk0" .. i] = {
        drill = "oil-derrick-mk0" .. i,
        base = "oil-derrick-mk0" .. i .. "-base",
        resource = "oil-mk0" .. i,
        fluid = "crude-oil",
        rand_min = 4,
        rand_max = 16,
        base_mult = 1600,
        drill_tier_mult = 2,
        fluid_amt_exp = 2,
        alert = "bitumen-seep-alert",
        explosion_radius = 20
    }
    derrick_types["tar-extractor-mk0" .. i] = {
        drill = "tar-extractor-mk0" .. i,
        base = "tar-extractor-mk0" .. i .. "-base",
        resource = "tar-patch",
        fluid = "tar",
        rand_min = 4,
        rand_max = 16,
        base_mult = 1600,
        drill_tier_mult = 2,
        fluid_amt_exp = 2,
        alert = "bitumen-seep-alert",
        explosion_radius = 20
    }
    derrick_types["natural-gas-derrick-mk0" .. i] = {
        drill = "natural-gas-derrick-mk0" .. i,
        base = "natural-gas-derrick-mk0" .. i .. "-base",
        resource = "natural-gas-mk0" .. i,
        fluid = "raw-gas",
        rand_min = 4,
        rand_max = 16,
        base_mult = 1600,
        drill_tier_mult = 2,
        fluid_amt_exp = 2,
        alert = "bitumen-seep-alert",
        explosion_radius = 20
    }
end

local resource_patches = {
    ["bitumen-seep"] = true
}

remote.add_interface("py-drilling", {
    ---@param resource_name data.ResourceEntityName
    ["add-resource-patch"] = function (resource_name)
        resource_patches[resource_name] = true
    end,
    ---@param resource_name data.ResourceEntityName
    ["remove-resource-patch"] = function (resource_name)
        resource_patches[resource_name] = nil
    end,
    ---@param prototype DerrickPrototype
    ["add-mining-drill"] = function (prototype)
        derrick_types[prototype.drill] = prototype
    end,
    ---@param drill_name EntityID
    ["remove-mining-drill"] = function (drill_name)
        derrick_types[drill_name] = nil
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
        drilling_fluid_amount = 1,
        patch = patch
    }
    assembler.disabled_by_script = true
    drill.disabled_by_script = true
    drill.custom_status = BITUMEN_DISABLED_CUSTOM_STATUS
    -- Register for destruction event to handle removal
    script.register_on_object_destroyed(drill)
    render_text(storage.oil_derricks[drill.unit_number], update_rate - game.tick % update_rate)
end)

-- Destroy hidden assembler when removing drill
---@param event EventData.on_object_destroyed
py.on_event(defines.events.on_object_destroyed, function(event)
    local unit_no = event.useful_id
    if not unit_no then return end -- on_object_destroyed provides a unit number and no entity
    local child_entity = (storage.oil_derricks[unit_no] or {}).base
    if child_entity and child_entity.valid then child_entity.destroy() end
    storage.oil_derricks[unit_no] = nil
end)

---@param event EventData.on_player_rotated_entity
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
    for id, derrick in pairs(storage.oil_derricks) do
        if not derrick.base.valid or not derrick.entity.valid then
            log("invalid drill encountered during update cycle, id: " .. id)
            if derrick.entity.valid then derrick.entity.destroy() end
            if derrick.base.valid then derrick.base.destroy() end
            storage.oil_derricks[id] = nil
            goto continue
        end

        local drill_active = false
        local drill_contents = derrick.base.get_fluid_contents()

        if next(drill_contents) then
            local fluid_amt_exp = derrick_types[derrick.entity.name].fluid_amt_exp
            -- Check possible drilling fluids in descending order of quality
            for tier = fluid_max_tier, fluid_min_tier, -1 do
                local fluid_type = "drilling-fluid-" .. tier
                local fluid_amount = drill_contents[fluid_type]
                if fluid_amount then
                    if fluid_amount >= fluid_threshold then
                        storage.oil_derricks[id].drilling_fluid_amount = storage.oil_derricks[id].drilling_fluid_amount + (fluid_amt_exp and 10 * (tier + 1) ^ fluid_amt_exp or 0)
                        derrick.base.extract_fluid {name = fluid_type, amount = 10}
                        derrick.entity.force.get_fluid_production_statistics(derrick.entity.surface_index).on_flow(fluid_type, -10)
                        drill_active = true
                    end
                    break
                end
            end
        end
        derrick.entity.disabled_by_script = not drill_active
        if drill_active then
            derrick.entity.custom_status = nil
        else
            derrick.entity.custom_status = BITUMEN_DISABLED_CUSTOM_STATUS
        end

        render_text(derrick)

        ::continue::
    end
end)

-- Overwrites seep amounts when they are generated
---@param event EventData.on_chunk_generated
script.on_event(defines.events.on_chunk_generated, function(event)
    local bitumen_patches = event.surface.find_entities_filtered {name = "bitumen-seep", area = event.area}
    for _, patch in pairs(bitumen_patches) do
        patch.amount = math.random(1000, 2500)
    end
end)

---@param number number
---@return string
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
    local derrick = storage.oil_derricks[drill.unit_number]
    if not derrick then return end

    local prototype = derrick_types[drill.name]
    local drill_tier = drill.name:match("%d$") or 1
    local new_patch_size = (prototype.rand_min and math.random(prototype.rand_min, prototype.rand_max) or
        prototype.rand_max and math.random(prototype.rand_max) or 1) *
        derrick.drilling_fluid_amount *
        drill_tier ^ (prototype.drill_tier_mult or 1) *
        (prototype.base_mult or 1)

    local base = derrick.base
    if base and base.valid then base.destroy() end
    storage.oil_derricks[drill.unit_number] = nil

    resource.surface.create_entity {
        name = prototype.resource,
        amount = new_patch_size,
        position = resource.position,
        quality = resource.quality.name
    }

    drill.update_connections()

    local fluid = prototype.fluid
    drill.force.print {
        prototype.alert,
        drill.name,
        add_commas_to_number(new_patch_size * 100),
        fluid,
        drill.position.x,
        drill.position.y,
        drill.surface.name
    }

    if not prototype.explosion_radius then return end
    local oil_explosion = drill.surface.create_entity {
        name = "oil-explosion",
        position = drill.position,
        force = drill.force_index
    }

    -- slightly damage all entities in 20 tile radius
    for _, entity in pairs(drill.surface.find_entities_filtered {position = drill.position, radius = prototype.explosion_radius, collision_mask = "object"}) do
        if entity.valid and entity.is_entity_with_health then
            entity.damage(math.min(math.random(184, 222), entity.max_health * math.random(27, 33) / 100), "enemy", "explosion", oil_explosion, drill.valid and drill or nil)
        end
    end
end)
