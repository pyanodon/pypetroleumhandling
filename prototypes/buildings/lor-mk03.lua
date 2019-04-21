RECIPE {
    type = "recipe",
    name = "lor-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"lor-mk02", 1},
        {"automated-factory-mk01", 1},
        {"steel-plate", 100},
        {"plastic-bar", 100},
        {"processing-unit", 15},
        {"small-parts-03", 25},
    },
    results = {
        {"lor-mk03", 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "lor-mk03",
    icon = "__pypetroleumhandling__/graphics/icons/lor-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "b",
    place_result = "lor-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "lor-mk03",
    icon = "__pypetroleumhandling__/graphics/icons/lor-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "lor-mk03"},
    fast_replaceable_group = "lor",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"lor"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "1000kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/lor-mk03/off.png",
                width = 296,
                height = 369,
                frame_count = 1,
                shift = util.by_pixel(4, -40)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(0, -128.5),
            west_position = util.by_pixel(0, -128.5),
            south_position = util.by_pixel(0, -128.5),
            east_position = util.by_pixel(0, -128.5),
            animation = {
                filename = "__pypetroleumhandling__/graphics/entity/lor-mk03/on.png",
                --priority = "low",
                frame_count = 80,
                line_length = 10,
                width = 160,
                height = 192,
                animation_speed = 0.3
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
            pipe_connections = {{type = "input", position = {0.0, -5.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, -5.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.0, -5.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 5.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, 5.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.0, 5.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/lor.ogg", volume = 1.1},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/lor.ogg", volume = 0.8},
        apparent_volume = 2.5
    }
}
