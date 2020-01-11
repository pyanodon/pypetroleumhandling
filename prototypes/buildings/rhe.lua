RECIPE {
    type = "recipe",
    name = "rhe",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"stone-brick", 50},
        {"pipe", 30},
        {"boiler", 5},
        {"electronic-circuit", 5},
        {"small-parts-01", 20},
    },
    results = {
        {"rhe", 1}
    }
}:add_unlock("coal-processing-1")

ITEM {
    type = "item",
    name = "rhe",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/rhe.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "rhe",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "rhe",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/rhe.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "rhe"},
    fast_replaceable_group = "cracker",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    --fixed_recipe = "hot-air",
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"rhe"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "300kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/rhe/off.png",
                width = 169,
                height = 209,
                line_length = 1,
                --frame_count = 100,
                --animation_speed = 0.4,
                shift = util.by_pixel(4.5, -24)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-1.5, -95),
            west_position = util.by_pixel(-1.5, -95),
            south_position = util.by_pixel(-1.5, -95),
            east_position = util.by_pixel(-1.5, -95),
            animation = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/rhe/on.png",
                --priority = "low",
                frame_count = 100,
                line_length = 10,
                width = 93,
                height = 31,
                animation_speed = 0.5
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
            pipe_connections = {{type = "input", position = {0.0, -3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 3.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/rhe.ogg", volume = 0.9},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/rhe.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
