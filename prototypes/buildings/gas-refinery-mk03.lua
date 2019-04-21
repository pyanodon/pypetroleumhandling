RECIPE {
    type = "recipe",
    name = "gas-refinery-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"gas-refinery-mk02", 1},
        {"steel-plate", 100},
        {"plastic-bar", 100},
        {"processing-unit", 15},
        {"small-parts-03", 30},
    },
    results = {
        {"gas-refinery-mk03", 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "gas-refinery-mk03",
    icon = "__pypetroleumhandling__/graphics/icons/gas-refinery-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "b",
    place_result = "gas-refinery-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "gas-refinery-mk03",
    icon = "__pypetroleumhandling__/graphics/icons/gas-refinery-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-mk03"},
    fast_replaceable_group = "gas-refinery",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-refinery"},
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
                filename = "__pypetroleumhandling__/graphics/entity/gas-refinery-mk03/off.png",
                width = 304,
                height = 387,
                frame_count = 1,
                shift = util.by_pixel(7, -48)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(48, -96),
            west_position = util.by_pixel(48, -96),
            south_position = util.by_pixel(48, -96),
            east_position = util.by_pixel(48, -96),
            animation = {
                filename = "__pypetroleumhandling__/graphics/entity/gas-refinery-mk01/anim.png",
                --priority = "low",
                frame_count = 54,
                line_length = 10,
                width = 192,
                height = 288,
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
        sound = {filename = "__pypetroleumhandling__/sounds/gas-refinery.ogg", volume = 1.5},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/gas-refinery.ogg", volume = 1.0},
        apparent_volume = 2.5
    }
}
