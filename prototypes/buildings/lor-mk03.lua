RECIPE {
    type = "recipe",
    name = "lor-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lor-mk02",               amount = 1},
        {type = "item", name = "automated-factory-mk01", amount = 1},
        {type = "item", name = "steel-plate",            amount = 100},
        {type = "item", name = "plastic-bar",            amount = 100},
        {type = "item", name = "electric-engine-unit",   amount = 15},
        {type = "item", name = "processing-unit",        amount = 15},
        {type = "item", name = "small-parts-03",         amount = 25},
    },
    results = {
        {type = "item", name = "lor-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "lor-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/lor-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "b",
    place_result = "lor-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "lor-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/lor-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "lor-mk03"},
    fast_replaceable_group = "lor",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"lor"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "1000kW",
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
                    draw_as_glow = true,
                    line_length = 10,
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
                    draw_as_glow = true,
                    line_length = 10,
                    width = 160,
                    height = 192,
                    animation_speed = 0.5,
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
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
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
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
            pipe_connections = {{flow_direction = "input", position = {0.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {3.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
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
