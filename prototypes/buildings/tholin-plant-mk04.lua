RECIPE {
    type = "recipe",
    name = "tholin-plant-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"tholin-plant-mk03", 1},
        {"low-density-structure", 10},
        {"nbfe-alloy", 5},
    },
    results = {
        {"tholin-plant-mk04", 1}
    }
}:add_unlock("tholin-mk04")

ITEM {
    type = "item",
    name = "tholin-plant-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tholin-plant-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "b",
    place_result = "tholin-plant-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "tholin-plant-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tholin-plant-mk04.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "tholin-plant-mk04"},
    fast_replaceable_group = "tholin-plant",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"tholin-plant"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "1400kW",
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-plant-mk01/tholin-plant-mk01-off.png",
                width = 224,
                height = 347,
                frame_count = 1,
                shift = util.by_pixel(0, -60)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-plant-mk01/tholin-plant-mk01-off-mask.png",
                width = 224,
                height = 347,
                frame_count = 1,
                shift = util.by_pixel(0, -60),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-64, -60),
            west_position = util.by_pixel(-64, -60),
            south_position = util.by_pixel(-64, -60),
            east_position = util.by_pixel(-64, -60),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-plant-mk01/tholin-plant-mk01-a.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 347,
                animation_speed = 0.5,
            }
        },
        {
            north_position = util.by_pixel(-64, -60),
            west_position = util.by_pixel(-64, -60),
            south_position = util.by_pixel(-64, -60),
            east_position = util.by_pixel(-64, -60),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-plant-mk01/tholin-plant-mk01-a-mask.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 347,
                animation_speed = 0.5,
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            }
        },
        {
            north_position = util.by_pixel(32, -60),
            west_position = util.by_pixel(32, -60),
            south_position = util.by_pixel(32, -60),
            east_position = util.by_pixel(32, -60),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-plant-mk01/tholin-plant-mk01-b.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 347,
                aanimation_speed = 0.5,
            }
        },
        {
            north_position = util.by_pixel(32, -60),
            west_position = util.by_pixel(32, -60),
            south_position = util.by_pixel(32, -60),
            east_position = util.by_pixel(32, -60),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-plant-mk01/tholin-plant-mk01-b-mask.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 347,
                animation_speed = 0.5,
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            }
        },
        {
            north_position = util.by_pixel(96, -60),
            west_position = util.by_pixel(96, -60),
            south_position = util.by_pixel(96, -60),
            east_position = util.by_pixel(96, -60),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-plant-mk01/tholin-plant-mk01-c.png",
                frame_count = 100,
                line_length = 20,
                width = 32,
                height = 347,
                animation_speed = 0.5,
            }
        },
        {
            north_position = util.by_pixel(96, -60),
            west_position = util.by_pixel(96, -60),
            south_position = util.by_pixel(96, -60),
            east_position = util.by_pixel(96, -60),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-plant-mk01/tholin-plant-mk01-c-mask.png",
                frame_count = 100,
                line_length = 20,
                width = 32,
                height = 347,
                animation_speed = 0.5,
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -4.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    open_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/open.ogg", volume = 0.55},
    close_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/close.ogg", volume = 0.7},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tholin-plant.ogg", volume = 1.2},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tholin-plant.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
