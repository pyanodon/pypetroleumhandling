RECIPE {
    type = "recipe",
    name = "cracker-mk04",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"cracker-mk03", 1},
        {"low-density-structure", 20},
        {"nbfe-alloy", 20},
    },
    results = {
        {"cracker-mk04", 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "cracker-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/cracker-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "b",
    place_result = "cracker-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "cracker-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/cracker-mk04.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "cracker-mk04"},
    fast_replaceable_group = "cracker",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"cracker"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_second_per_watt = 1e-06
    },
    energy_usage = "1000kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/cracker-mk04/left-mk04.png",
                width = 128,
                height = 234,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.1,
                shift = util.by_pixel(-48, -3)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/cracker-mk04/right-mk04.png",
                width = 128,
                height = 234,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.1,
                shift = util.by_pixel(80, -3)
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
                filename = "__pypetroleumhandling__/graphics/entity/cracker-mk01/poof.png",
                --priority = "low",
                frame_count = 100,
                line_length = 10,
                width = 64,
                height = 96,
                animation_speed = 0.1
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
        sound = {filename = "__pypetroleumhandling__/sounds/cracker.ogg", volume = 1.5},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/cracker.ogg", volume = 1.0},
        apparent_volume = 2.5
    }
}
