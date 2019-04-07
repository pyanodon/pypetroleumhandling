RECIPE {
    type = "recipe",
    name = "reformer-mk02",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"reformer-mk01", 1},
        {"advanced-circuit", 5},
        {"small-parts-02", 15},
        {"niobium-plate", 10},
    },
    results = {
        {"reformer-mk02", 1}
    }
}:add_unlock("oil-machines-mk02")

ITEM {
    type = "item",
    name = "reformer-mk02",
    icon = "__pypetroleumhandling__/graphics/icons/reformer-mk02.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "b",
    place_result = "reformer-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "reformer-mk02",
    icon = "__pypetroleumhandling__/graphics/icons/reformer-mk02.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "reformer-mk02"},
    fast_replaceable_group = "reformer",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.4, -6.4}, {6.4, 6.4}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"reformer"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_second_per_watt = 1e-06
    },
    energy_usage = "700kW",
    ingredient_count = 10,
    
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, 7.0}}}
        },

        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-7.0, 2.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-7.0, -2.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {7.0, 2.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {7.0, -2.0}}}
        },
        off_when_no_fluid_recipe = false,
    },
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/reformer-mk02/i1.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(-176, -176)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/reformer-mk02/i2.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(-112, -176)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/reformer-mk02/i3.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(-48, -176)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/reformer-mk02/i4.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(16, -176)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/reformer-mk02/i5.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(80, -176)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/reformer-mk02/i6.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(144, -176)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/reformer-mk02/i7.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(208, -176)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/reformer-mk01/i8.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(272, -176)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/reformer.ogg", volume = 1.4},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/reformer.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
