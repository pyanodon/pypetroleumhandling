RECIPE {
    type = "recipe",
    name = "pumpjack-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"pumpjack-mk03", 1},
        {"nbfe-alloy", 30},
        {"concrete", 35},
        {"low-density-structure", 30},
        {"small-parts-03", 40},
    },
    results = {
        {"pumpjack-mk04", 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "pumpjack-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "b",
    place_result = "pumpjack-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk04"},
    fast_replaceable_group = "pumpjack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"speed","consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3,
    },
    energy_usage = "750kW",
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, 6.0}}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, -6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a1.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(-160, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a2.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(-128, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a3.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(-96, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a4.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a5.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(-32, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a6.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a7.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(32, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a8.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(64, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a9.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(96, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a10.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(128, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a11.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(160, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a12.png",
                width = 32,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(192, -23)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a13.png",
                width = 16,
                height = 403,
                line_length = 50,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(216, -23)
            },
        }
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 0.8},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
