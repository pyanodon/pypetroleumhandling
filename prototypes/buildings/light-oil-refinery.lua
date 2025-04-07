RECIPE {
    type = "recipe",
    name = "lor-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "vacuum-pump-mk01",   amount = 1},
        {type = "item", name = "steel-plate",        amount = 30},
        {type = "item", name = "pipe",               amount = 30},
        {type = "item", name = "steam-engine",       amount = 6},
        {type = "item", name = "electronic-circuit", amount = 30},
        {type = "item", name = "small-parts-01",     amount = 10},
    },
    results = {
        {type = "item", name = "lor-mk01", amount = 1}
    }
} --:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "lor-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lor-mk01",         amount = 1},
        {type = "item", name = "steel-plate",      amount = 50},
        {type = "item", name = "advanced-circuit", amount = 12},
        {type = "item", name = "engine-unit",      amount = 7},
        {type = "item", name = "small-parts-02",   amount = 30},
        {type = "item", name = "pipe",             amount = 30},
    },
    results = {
        {type = "item", name = "lor-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "lor-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lor-mk02",               amount = 1},
        {type = "item", name = "automated-factory-mk01", amount = 1},
        {type = "item", name = "steel-plate",            amount = 100},
        {type = "item", name = "plastic-bar",            amount = 100},
        {type = "item", name = "electric-engine-unit",   amount = 15},
        {type = "item", name = "processing-unit",        amount = 15},
        {type = "item", name = "small-parts-03",         amount = 25},
    },
    results = {
        {type = "item", name = "lor-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "lor-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lor-mk03",                                           amount = 1},
        {type = "item", name = mods.pyrawores and "distilator-mk02" or "distilator", amount = 1},
        {type = "item", name = "nbfe-alloy",                                         amount = 50},
        {type = "item", name = "low-density-structure",                              amount = 30},
        {type = "item", name = "small-parts-03",                                     amount = 25},
    },
    results = {
        {type = "item", name = "lor-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

for i = 1, 4 do
    local name = "lor-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/lor-mk0" .. i .. ".png"
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
        fast_replaceable_group = "lor",
        max_health = 300 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
        selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"lor"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 50 * i
            },
        },
        energy_usage = (600 * i) .. "kW",
        graphics_set = {
            working_visualisations = {
                {
                    north_position = util.by_pixel(0, -128.5),
                    west_position = util.by_pixel(0, -128.5),
                    south_position = util.by_pixel(0, -128.5),
                    east_position = util.by_pixel(0, -128.5),
                    animation = {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/lor-mk01/on.png",
                        --priority = "low",
                        frame_count = 80,
                        line_length = 10,
                        draw_as_glow = true,
                        width = 160,
                        height = 192,
                        animation_speed = 0.5,
                    }
                },
                {
                    north_position = util.by_pixel(0, -128.5),
                    west_position = util.by_pixel(0, -128.5),
                    south_position = util.by_pixel(0, -128.5),
                    east_position = util.by_pixel(0, -128.5),
                    animation = {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/lor-mk01/on-mask.png",
                        --priority = "low",
                        frame_count = 80,
                        draw_as_glow = true,
                        line_length = 10,
                        width = 160,
                        height = 192,
                        animation_speed = 0.5,
                        tint = py.tints[i]
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/lor-mk01/off.png",
                        width = 296,
                        height = 369,
                        frame_count = 1,
                        shift = util.by_pixel(4, -40)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/lor-mk01/off-mask.png",
                        width = 296,
                        height = 369,
                        frame_count = 1,
                        shift = util.by_pixel(4, -40),
                        tint = py.tints[i]
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = false,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, -4.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {3.0, -4.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-3.0, -4.0}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {0.0, 4.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-3.0, 4.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {3.0, 4.0}, direction = defines.direction.south}}
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pypetroleumhandlinggraphics__/sounds/lor.ogg", volume = 1.3},
            idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/lor.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
