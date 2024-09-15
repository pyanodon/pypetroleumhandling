RECIPE {
    type = "recipe",
    name = "heavy-oil-refinery-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"heavy-oil-refinery-mk02", 1},
        {"processing-unit", 15},
        {"small-parts-03", 30},
        {"concrete", 40},
        {"electric-engine-unit", 20},
        {"engine-unit", 10},
    },
    results = {
        {"heavy-oil-refinery-mk03", 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "heavy-oil-refinery-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hor-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "b",
    place_result = "heavy-oil-refinery-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "heavy-oil-refinery-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hor-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "heavy-oil-refinery-mk03"},
    fast_replaceable_group = "heavy-oil-refinery",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.4, -6.4}, {6.4, 6.4}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"hor"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "900kW",
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/off-mk01.png",
                width = 448,
                height = 551,
                frame_count = 1,
                shift = util.by_pixel(16, -62)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/off-mask.png",
                width = 448,
                height = 551,
                frame_count = 1,
                shift = util.by_pixel(16, -62),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(0, 62.5),
            west_position = util.by_pixel(0, 62.5),
            south_position = util.by_pixel(0, 62.5),
            east_position = util.by_pixel(0, 62.5),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/bot.png",
                --priority = "low",
                frame_count = 50,
                line_length = 8,
                width = 224,
                height = 224,
                animation_speed = 0.5,
            }
        },
        {
            north_position = util.by_pixel(0, 62.5),
            west_position = util.by_pixel(0, 62.5),
            south_position = util.by_pixel(0, 62.5),
            east_position = util.by_pixel(0, 62.5),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/bot-mask.png",
                --priority = "low",
                frame_count = 50,
                line_length = 8,
                width = 224,
                height = 224,
                animation_speed = 0.5,
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            }
        },
        {
            north_position = util.by_pixel(0, -177.5),
            west_position = util.by_pixel(0, -177.5),
            south_position = util.by_pixel(0, -177.5),
            east_position = util.by_pixel(0, -177.5),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/top.png",
                --priority = "low",
                frame_count = 50,
                line_length = 8,
                width = 224,
                height = 256,
                animation_speed = 0.5,
            }
        },
        {
            north_position = util.by_pixel(0, -177.5),
            west_position = util.by_pixel(0, -177.5),
            south_position = util.by_pixel(0, -177.5),
            east_position = util.by_pixel(0, -177.5),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/top-mask.png",
                --priority = "low",
                frame_count = 50,
                line_length = 8,
                width = 224,
                height = 256,
                animation_speed = 0.5,
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
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
            pipe_connections = {{flow_direction = "input", position = {0, -6.4}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0, 6.4}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-6.4, 0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {6.4, 0}, direction = defines.direction.east}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/hor.ogg", volume = 1.7},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/hor.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
