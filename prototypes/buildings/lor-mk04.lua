RECIPE {
    type = "recipe",
    name = "lor-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item",                                        name = "lor-mk03",              amount = 1},
        {mods.pyrawores and "distilator-mk02" or "distilator", 1},
        {type = "item",                                        name = "nbfe-alloy",            amount = 50},
        {type = "item",                                        name = "low-density-structure", amount = 30},
        {type = "item",                                        name = "small-parts-03",        amount = 25},
    },
    results = {
        {type = "item", name = "lor-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "lor-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/lor-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "b",
    place_result = "lor-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "lor-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/lor-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "lor-mk04"},
    fast_replaceable_group = "lor",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 4,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"lor"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "1200kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(0, -128.5),
                west_position = util.by_pixel(0, -128.5),
                south_position = util.by_pixel(0, -128.5),
                east_position = util.by_pixel(0, -128.5),
                animation = {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/lor-mk01/on.png",
                    --priority = "low",
                    frame_count = 80,
                    line_length = 10,
                    draw_as_glow = true,
                    width = 160,
                    height = 192,
                    animation_speed = 0.5,
                }
            },
            {
                north_position = util.by_pixel(0, -128.5),
                west_position = util.by_pixel(0, -128.5),
                south_position = util.by_pixel(0, -128.5),
                east_position = util.by_pixel(0, -128.5),
                animation = {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/lor-mk01/on-mask.png",
                    --priority = "low",
                    frame_count = 80,
                    line_length = 10,
                    draw_as_glow = true,
                    width = 160,
                    height = 192,
                    animation_speed = 0.5,
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/lor-mk01/off.png",
                    width = 296,
                    height = 369,
                    frame_count = 1,
                    shift = util.by_pixel(4, -40)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/lor-mk01/off-mask.png",
                    width = 296,
                    height = 369,
                    frame_count = 1,
                    shift = util.by_pixel(4, -40),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
            pipe_connections = {{flow_direction = "input", position = {0.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {3.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-3.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.0, 4.0}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/lor.ogg", volume = 1.3},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/lor.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
