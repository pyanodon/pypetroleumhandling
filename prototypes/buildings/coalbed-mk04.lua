RECIPE {
    type = "recipe",
    name = "coalbed-mk04",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"coalbed-mk03", 1},
        {"low-density-structure", 30},
        {"small-parts-03", 30},
        {"electric-engine-unit", 5},
        {"nbfe-alloy", 30},
    },
    results = {
        {"coalbed-mk04", 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "coalbed-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/coalbed-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "b",
    place_result = "coalbed-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "coalbed-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/coalbed-mk04.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "coalbed-mk04"},
    fast_replaceable_group = "coalbed",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"coalbed"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.001,
    },
    energy_usage = "1350kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/coalbed-mk04/left-mk04.png",
                width = 96,
                height = 298,
                line_length = 21,
                frame_count = 124,
                animation_speed = 0.2,
                shift = util.by_pixel(-64, -32)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/coalbed-mk04/mid-mk04.png",
                width = 96,
                height = 298,
                line_length = 21,
                frame_count = 124,
                animation_speed = 0.2,
                shift = util.by_pixel(32, -32)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/coalbed-mk04/right-mk04.png",
                width = 64,
                height = 298,
                line_length = 21,
                frame_count = 124,
                animation_speed = 0.2,
                shift = util.by_pixel(112, -32)
            },
        }
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
            pipe_connections = {{type = "input", position = {-4.0, 0.0}}}
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
            pipe_connections = {{type = "output", position = {4.0, 0.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/coalbed.ogg", volume = 1.3},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/coalbed.ogg", volume = 0.8},
        apparent_volume = 2.5
    }
}
