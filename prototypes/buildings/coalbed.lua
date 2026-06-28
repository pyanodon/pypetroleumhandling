RECIPE {
    type = "recipe",
    name = "coalbed-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lab",                   amount = 1},
        {type = "item", name = "iron-plate",            amount = 100},
        {type = "item", name = "electric-mining-drill", amount = 3},
        {type = "item", name = "chemical-plant-mk01",   amount = 1},
        {type = "item", name = "small-parts-01",        amount = 20}
    },
    results = {
        {type = "item", name = "coalbed-mk01", amount = 1}
    }
}:add_unlock("coalbed-mk01")

RECIPE {
    type = "recipe",
    name = "coalbed-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "coalbed-mk01",          amount = 1},
        {type = "item", name = "electric-mining-drill", amount = 2},
        {type = "item", name = "evaporator",            amount = 1},
        {type = "item", name = "engine-unit",           amount = 6},
        {type = "item", name = "steel-plate",           amount = 30},
        {type = "item", name = "small-parts-02",        amount = 20}
    },
    results = {
        {type = "item", name = "coalbed-mk02", amount = 1}
    }
}:add_unlock("coalbed-mk02")

RECIPE {
    type = "recipe",
    name = "coalbed-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "coalbed-mk02",         amount = 1},
        {type = "item", name = "steel-plate",          amount = 30},
        {type = "item", name = "plastic-bar",          amount = 40},
        {type = "item", name = "small-parts-03",       amount = 35},
        {type = "item", name = "electric-engine-unit", amount = 6},
        {type = "item", name = "processing-unit",      amount = 15}
    },
    results = {
        {type = "item", name = "coalbed-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "coalbed-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "coalbed-mk03",          amount = 1},
        {type = "item", name = "low-density-structure", amount = 30},
        {type = "item", name = "small-parts-03",        amount = 30},
        {type = "item", name = "nbfe-alloy",            amount = 30}
    },
    results = {
        {type = "item", name = "coalbed-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

for i = 1, 4 do
    local name = "coalbed-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/coalbed-mk0" .. i .. ".png"
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
        fast_replaceable_group = "coalbed",
        next_upgrade = i ~= 4 and "coalbed-mk0" .. (i+1) or nil,
        max_health = 100 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"coalbed"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution = 50}
        },
        energy_usage = 550 + (200 * i) .. "kW",
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/left-mk01.png",
                        width = 96,
                        height = 298,
                        line_length = 21,
                        frame_count = 124,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-64, -32)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/left-mask.png",
                        width = 96,
                        height = 298,
                        line_length = 21,
                        frame_count = 124,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-64, -32),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/mid-mk01.png",
                        width = 96,
                        height = 298,
                        line_length = 21,
                        frame_count = 124,
                        animation_speed = 0.5,
                        shift = util.by_pixel(32, -32)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/mid-mask.png",
                        width = 96,
                        height = 298,
                        line_length = 21,
                        frame_count = 124,
                        animation_speed = 0.5,
                        shift = util.by_pixel(32, -32),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/right-mk01.png",
                        width = 64,
                        height = 298,
                        line_length = 21,
                        frame_count = 124,
                        animation_speed = 0.5,
                        shift = util.by_pixel(112, -32)
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
                pipe_connections = {{flow_direction = "input", position = {-3.0, 0.0}, direction = defines.direction.west}}
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
                pipe_connections = {{flow_direction = "output", position = {3.0, 0.0}, direction = defines.direction.east}}
            }
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {
                filename = "__pypetroleumhandlinggraphics__/sounds/coalbed.ogg",
                volume = 1.3
            },
            idle_sound = {
                filename = "__pypetroleumhandlinggraphics__/sounds/coalbed.ogg",
                volume = 0.3
            }
        }
    }
end
