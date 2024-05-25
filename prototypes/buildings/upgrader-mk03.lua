RECIPE {
    type = "recipe",
    name = "upgrader-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"upgrader-mk02", 1},
        {"processing-unit", 15},
        {"concrete", 40},
        {"electric-engine-unit", 10},
        {"small-parts-03", 30},
    },
    results = {
        {"upgrader-mk03", 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "upgrader-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/upgrader-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "b",
    place_result = "upgrader-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "upgrader-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/upgrader-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "upgrader-mk03"},
    fast_replaceable_group = "upgrader",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"upgrader"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "1000kW",
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/left-mk01.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(-48, -64)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/left-mk01-mask.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(-48, -64),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/right-mk01.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(80, -64)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/right-mk01-mask.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(80, -64),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-48, -128),
            west_position = util.by_pixel(-48, -128),
            south_position = util.by_pixel(-48, -128),
            east_position = util.by_pixel(-48, -128),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/left-light.png",
                --priority = "low",
                frame_count = 80,
                line_length = 16,
                width = 128,
                height = 224,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(64, -128),
            west_position = util.by_pixel(64, -128),
            south_position = util.by_pixel(64, -128),
            east_position = util.by_pixel(64, -128),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/right-light.png",
                --priority = "low",
                frame_count = 80,
                line_length = 16,
                width = 96,
                height = 224,
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
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/upgrader.ogg", volume = 1.1},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/upgrader.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
