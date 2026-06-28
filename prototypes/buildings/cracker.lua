RECIPE {
    type = "recipe",
    name = "cracker-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lab",                amount = 1},
        {type = "item", name = "iron-plate",         amount = 50},
        {type = "item", name = "steam-engine",       amount = 5},
        {type = "item", name = "electronic-circuit", amount = 20},
        {type = "item", name = "small-parts-01",     amount = 20},
    },
    results = {
        {type = "item", name = "cracker-mk01", amount = 1}
    }
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "cracker-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "cracker-mk01",     amount = 1},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "plastic-bar",      amount = 40},
        {type = "item", name = "niobium-plate",    amount = 20},
        {type = "item", name = "engine-unit",      amount = 5},
        {type = "item", name = "small-parts-02",   amount = 20},
    },
    results = {
        {type = "item", name = "cracker-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "cracker-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "cracker-mk02",         amount = 1},
        {type = "item", name = "processing-unit",      amount = 20},
        {type = "item", name = "concrete",             amount = 20},
        {type = "item", name = "electric-engine-unit", amount = 10},
        {type = "item", name = "small-parts-03",       amount = 30},
    },
    results = {
        {type = "item", name = "cracker-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "cracker-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "cracker-mk03",          amount = 1},
        {type = "item", name = "low-density-structure", amount = 20},
        {type = "item", name = "nbfe-alloy",            amount = 20},
    },
    results = {
        {type = "item", name = "cracker-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

local usage_table = {600, 600, 800, 1000}

for i = 1,4 do
    local name = "cracker-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/cracker-mk0" .. i .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-petroleum-handling-buildings-mk0" .. i,
        order = "b",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "cracker",
        next_upgrade = i ~= 4 and "cracker-mk0" .. (i+1) or nil,
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"cracker"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution = 50}
        },
        energy_usage = usage_table[i] .. "kW",
        graphics_set = {
            working_visualisations = {
                {
                    north_position = util.by_pixel(16, -64),
                    west_position = util.by_pixel(16, -64),
                    south_position = util.by_pixel(16, -64),
                    east_position = util.by_pixel(16, -64),
                    animation = {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/poof.png",
                        -- priority = "low",
                        frame_count = 100,
                        line_length = 10,
                        width = 64,
                        height = 96,
                        animation_speed = 0.1
                    }
                }
            },
            animation = {
                layers = {
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/left-mk01.png",
                        width = 128,
                        height = 234,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-48, -3)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/left-mask.png",
                        width = 128,
                        height = 234,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-48, -3),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/right-mk01.png",
                        width = 128,
                        height = 234,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(80, -3)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/right-mask.png",
                        width = 128,
                        height = 234,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(80, -3),
                        tint = py.tints[i]
                    }
                }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = false,
        fluid_boxes = { -- 1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {0.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {2.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {-2.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {0.0, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-2.0, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {2.0, 3.0}, direction = defines.direction.south}}
            }
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pypetroleumhandlinggraphics__/sounds/cracker.ogg",volume = 1.5},
            idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/cracker.ogg",volume = 0.3}
        }
    }
end
