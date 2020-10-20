RECIPE {
    type = "recipe",
    name = "cracker-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"cracker-mk02", 1},
        {"processing-unit", 20},
        {"concrete", 20},
        {"engine-unit", 10},
        {"small-parts-03", 30},
    },
    results = {
        {"cracker-mk03", 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "cracker-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/cracker-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "b",
    place_result = "cracker-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "cracker-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/cracker-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "cracker-mk03"},
    fast_replaceable_group = "cracker",
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
    crafting_categories = {"cracker"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "800kW",
    ingredient_count = 20,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/left-mk01.png",
                width = 128,
                height = 234,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-48, -3)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/left-mask.png",
                width = 128,
                height = 234,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-48, -3),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/right-mk01.png",
                width = 128,
                height = 234,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(80, -3)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/right-mask.png",
                width = 128,
                height = 234,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(80, -3),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(16, -64),
            west_position = util.by_pixel(16, -64),
            south_position = util.by_pixel(16, -64),
            east_position = util.by_pixel(16, -64),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/poof.png",
                --priority = "low",
                frame_count = 100,
                line_length = 10,
                width = 64,
                height = 96,
                animation_speed = 0.2
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -4.0}}}
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
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 4.0}}}
        },
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
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/cracker.ogg", volume = 1.5},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/cracker.ogg", volume = 1.0},
        apparent_volume = 2.5
    }
}
