RECIPE {
    type = "recipe",
    name = "rhe",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "stone-brick",        amount = 50},
        {type = "item", name = "pipe",               amount = 30},
        {type = "item", name = "boiler",             amount = 5},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "small-parts-01",     amount = 20},
    },
    results = {
        {type = "item", name = "rhe", amount = 1}
    }
}:add_unlock("hot-air-mk01")

ITEM {
    type = "item",
    name = "rhe",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/rhe.png",
    icon_size = 64,
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
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "rhe"},
    fast_replaceable_group = "cracker",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    --fixed_recipe = "hot-air",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"rhe"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "300kW",
    graphics_set = {
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
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/rhe/off.png",
                    width = 169,
                    height = 209,
                    line_length = 1,
                    --frame_count = 100,
                    shift = util.by_pixel(4.5, -24)
                },
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -2.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 2.0}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/rhe.ogg", volume = 0.9},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/rhe.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
