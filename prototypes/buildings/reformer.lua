RECIPE {
    type = "recipe",
    name = "reformer-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "distilator",         amount = 1},
        {type = "item", name = "steel-plate",        amount = 40},
        {type = "item", name = "iron-plate",         amount = 100},
        {type = "item", name = "steam-engine",       amount = 10},
        {type = "item", name = "electronic-circuit", amount = 30},
        {type = "item", name = "small-parts-01",     amount = 10},
    },
    results = {
        {type = "item", name = "reformer-mk01", amount = 1}
    }
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "reformer-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "reformer-mk01",    amount = 1},
        {type = "item", name = "advanced-circuit", amount = 5},
        {type = "item", name = "small-parts-02",   amount = 15},
        {type = "item", name = "engine-unit",      amount = 10},
        {type = "item", name = "niobium-plate",    amount = 10},
    },
    results = {
        {type = "item", name = "reformer-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "reformer-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "reformer-mk02",        amount = 1},
        {type = "item", name = "small-parts-03",       amount = 20},
        {type = "item", name = "niobium-plate",        amount = 10},
        {type = "item", name = "processing-unit",      amount = 15},
        {type = "item", name = "electric-engine-unit", amount = 20},
        {type = "item", name = "concrete",             amount = 40},
        {type = "item", name = "engine-unit",          amount = 10},
    },
    results = {
        {type = "item", name = "reformer-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "reformer-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "reformer-mk03",         amount = 1},
        {type = "item", name = "low-density-structure", amount = 25},
        {type = "item", name = "nbfe-alloy",            amount = 10},
    },
    results = {
        {type = "item", name = "reformer-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

for i = 1, 4 do
    local name = "reformer-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/reformer-mk0" .. i .. ".png"
    local icon_size = 32

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
        fast_replaceable_group = "reformer",
        max_health = 300 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-6.4, -6.4}, {6.4, 6.4}},
        selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"reformer"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 50 * i
            },
        },
        energy_usage = (2.5 * i) .. "MW",
        fluid_boxes_off_when_no_fluid_recipe = false,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {2.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-2.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {2.0, 6.0}, direction = defines.direction.south}}
            },
            {
                production_type = "input",
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-2.0, 6.0}, direction = defines.direction.south}}
            },

            {
                production_type = "output",
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-6.0, 2.0}, direction = defines.direction.west}}
            },
            {
                production_type = "output",
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-6.0, -2.0}, direction = defines.direction.west}}
            },
            {
                production_type = "output",
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {6.0, 2.0}, direction = defines.direction.east}}
            },
            {
                production_type = "output",
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {6.0, -2.0}, direction = defines.direction.east}}
            },
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/idle.png",
                        width = 64 * 5,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(-48, -176),
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i1-mask.png",
                        width = 64,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(-176, -176),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i2-mask.png",
                        width = 64,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(-112, -176),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i3-mask.png",
                        width = 64,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(-48, -176),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i4-mask.png",
                        width = 64,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(16, -176),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i5-mask.png",
                        width = 64,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(80, -176),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i6.png",
                        width = 64,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(144, -176)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i6-mask.png",
                        width = 64,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(144, -176),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i7.png",
                        width = 64,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(208, -176)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i7-mask.png",
                        width = 64,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(208, -176),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/sh.png",
                        width = 128,
                        height = 769,
                        frame_count = 1,
                        line_length = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(272 - 32, -176)
                    },
                },
            },
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    animation = {
                        layers = {
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i1.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(-176, -176)
                            },
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i1-mask.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(-176, -176),
                                tint = py.tints[i]
                            },
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i2.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(-112, -176)
                            },
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i2-mask.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(-112, -176),
                                tint = py.tints[i]
                            },
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i3.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(-48, -176)
                            },
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i3-mask.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(-48, -176),
                                tint = py.tints[i]
                            },
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i4.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(16, -176)
                            },
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i4-mask.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(16, -176),
                                tint = py.tints[i]
                            },
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i5.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(80, -176)
                            },
                            {
                                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i5-mask.png",
                                width = 64,
                                height = 769,
                                frame_count = 50,
                                line_length = 25,
                                animation_speed = 0.4,
                                shift = util.by_pixel(80, -176),
                                tint = py.tints[i]
                            },
                        }
                    },
                }
            }
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pypetroleumhandlinggraphics__/sounds/reformer.ogg", volume = 1.4},
            idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/reformer.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
