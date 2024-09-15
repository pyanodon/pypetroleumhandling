RECIPE {
    type = "recipe",
    name = "retorter",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "stone-brick", amount = 20},
        {type = "item", name = "pipe", amount = 20},
        {type = "item", name = "steel-plate", amount = 30},
        --{type = "item", name = "processing-unit", amount = 50},
        --{type = "item", name = "small-parts-03", amount = 200},
    },
    results = {
        {type = "item", name = "retorter", amount = 1}
    }
}:add_unlock("kerogen")

ITEM {
    type = "item",
    name = "retorter",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/retorter.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "retorter",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "retorter",
    fixed_recipe = 'kerogen-extraction',
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/retorter.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "retorter"},
    fast_replaceable_group = "retorter",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.4, -7.4}, {7.4, 7.4}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"kerogen"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "2100kW",
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/retorter/base.png",
                width = 487,
                height = 491,
                frame_count = 1,
                shift = util.by_pixel(2, -4)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-197, -271),
            west_position = util.by_pixel(-197, -271),
            south_position = util.by_pixel(-197, -271),
            east_position = util.by_pixel(-197, -271),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/retorter/cap-01.png",
                --priority = "low",
                frame_count = 80,
                line_length = 20,
                draw_as_glow = true,
                width = 81,
                height = 150,
                run_mode = "forward-then-backward",
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(174, -182),
            west_position = util.by_pixel(174, -182),
            south_position = util.by_pixel(174, -182),
            east_position = util.by_pixel(174, -182),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/retorter/cap-02.png",
                --priority = "low",
                frame_count = 60,
                line_length = 20,
                width = 81,
                draw_as_glow = true,
                height = 150,
                run_mode = "forward-then-backward",
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(47, -111),
            west_position = util.by_pixel(47, -111),
            south_position = util.by_pixel(47, -111),
            east_position = util.by_pixel(47, -111),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/retorter/cap-03.png",
                --priority = "low",
                frame_count = 70,
                line_length = 10,
                width = 81,
                draw_as_glow = true,
                height = 150,
                run_mode = "forward-then-backward",
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(181.5, -1),
            west_position = util.by_pixel(181.5, -1),
            south_position = util.by_pixel(181.5, -1),
            east_position = util.by_pixel(181.5, -1),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/retorter/cap-04.png",
                --priority = "low",
                frame_count = 90,
                line_length = 10,
                width = 81,
                draw_as_glow = true,
                height = 150,
                run_mode = "forward-then-backward",
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(185, 161.5),
            west_position = util.by_pixel(185, 161.5),
            south_position = util.by_pixel(185, 161.5),
            east_position = util.by_pixel(185, 161.5),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/retorter/cap-05.png",
                --priority = "low",
                frame_count = 80,
                line_length = 10,
                draw_as_glow = true,
                width = 81,
                height = 150,
                run_mode = "forward-then-backward",
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(110.5, 102.5),
            west_position = util.by_pixel(110.5, 102.5),
            south_position = util.by_pixel(110.5, 102.5),
            east_position = util.by_pixel(110.5, 102.5),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/retorter/vent.png",
                --priority = "low",
                frame_count = 40,
                line_length = 10,
                width = 64,
                height = 64,
                --run_mode = "forward-then-backward",
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-36, -232),
            west_position = util.by_pixel(-36, -232),
            south_position = util.by_pixel(-36, -232),
            east_position = util.by_pixel(-36, -232),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/retorter/vent.png",
                --priority = "low",
                frame_count = 40,
                line_length = 10,
                width = 64,
                height = 64,
                --run_mode = "forward-then-backward",
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-145.5, 103),
            west_position = util.by_pixel(-145.5, 103),
            south_position = util.by_pixel(-145.5, 103),
            east_position = util.by_pixel(-145.5, 103),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/retorter/rotate.png",
                --priority = "low",
                frame_count = 80,
                line_length = 10,
                width = 128,
                height = 192,
                --run_mode = "forward-then-backward",
                animation_speed = 0.5
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, -7.4}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-7.4, 1.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, 7.4}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {7.4, -1.0}, direction = defines.direction.east}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/retorter.ogg", volume = 1.4},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/retorter.ogg", volume = 0.05},
        audible_distance_modifier = 0.22,
    }
}
