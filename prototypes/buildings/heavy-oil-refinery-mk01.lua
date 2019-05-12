RECIPE {
    type = "recipe",
    name = "heavy-oil-refinery-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"advanced-foundry-mk01", 1},
        {"steel-plate", 40},
        {"small-parts-01", 10},
        {"iron-plate", 100},
        {"steam-engine", 4},
        {"electronic-circuit", 30},
    },
    results = {
        {"heavy-oil-refinery-mk01", 1}
    }
}:add_unlock("oil-machines-mk01")

ITEM {
    type = "item",
    name = "heavy-oil-refinery-mk01",
    icon = "__pypetroleumhandling__/graphics/icons/hor-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "b",
    place_result = "heavy-oil-refinery-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "heavy-oil-refinery-mk01",
    icon = "__pypetroleumhandling__/graphics/icons/hor-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "heavy-oil-refinery-mk01"},
    fast_replaceable_group = "heavy-oil-refinery",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.4, -6.4}, {6.4, 6.4}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"hor"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "500kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/heavy-oil-refinery-mk01/off-mk01.png",
                width = 448,
                height = 551,
                frame_count = 1,
                shift = util.by_pixel(16, -62)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/heavy-oil-refinery-mk01/off-mask.png",
                width = 448,
                height = 551,
                frame_count = 1,
                shift = util.by_pixel(16, -62),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                filename = "__pypetroleumhandling__/graphics/entity/heavy-oil-refinery-mk01/bot.png",
                --priority = "low",
                frame_count = 50,
                line_length = 8,
                width = 224,
                height = 224,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(0, 62.5),
            west_position = util.by_pixel(0, 62.5),
            south_position = util.by_pixel(0, 62.5),
            east_position = util.by_pixel(0, 62.5),
            animation = {
                filename = "__pypetroleumhandling__/graphics/entity/heavy-oil-refinery-mk01/bot-mask.png",
                --priority = "low",
                frame_count = 50,
                line_length = 8,
                width = 224,
                height = 224,
                animation_speed = 0.5,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        },
        {
            north_position = util.by_pixel(0, -177.5),
            west_position = util.by_pixel(0, -177.5),
            south_position = util.by_pixel(0, -177.5),
            east_position = util.by_pixel(0, -177.5),
            animation = {
                filename = "__pypetroleumhandling__/graphics/entity/heavy-oil-refinery-mk01/top.png",
                --priority = "low",
                frame_count = 50,
                line_length = 8,
                width = 224,
                height = 256,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(0, -177.5),
            west_position = util.by_pixel(0, -177.5),
            south_position = util.by_pixel(0, -177.5),
            east_position = util.by_pixel(0, -177.5),
            animation = {
                filename = "__pypetroleumhandling__/graphics/entity/heavy-oil-refinery-mk01/top-mask.png",
                --priority = "low",
                frame_count = 50,
                line_length = 8,
                width = 224,
                height = 256,
                animation_speed = 0.5,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
            pipe_connections = {{type = "input", position = {0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0, 7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-7.0, 0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {7.0, 0}}}
        },
        off_when_no_fluid_recipe = false,
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/hor.ogg", volume = 1.7},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/hor.ogg", volume = 1.3},
        apparent_volume = 2.5
    }
}
