RECIPE {
    type = "recipe",
    name = "pumpjack-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"pumpjack-mk02", 1},
        {"pipe", 40},
        {"processing-unit", 10},
        {"small-parts-03", 40},
        {"electric-engine-unit", 5},
    },
    results = {
        {"pumpjack-mk03", 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "pumpjack-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "b",
    place_result = "pumpjack-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk03"},
    fast_replaceable_group = "pumpjack-mk03",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"speed","consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "650kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk03/a1.png",
                width = 96,
                height = 394,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(-96, -50)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk03/a2.png",
                width = 96,
                height = 394,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -50)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk03/a3.png",
                width = 96,
                height = 394,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(96, -50)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk03/a4.png",
                width = 32,
                height = 394,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(160, -50)
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, 5.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, -5.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 1.2},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
