RECIPE {
    type = "recipe",
    name = "heavy-oil-refinery-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "stone-furnace",      amount = 2},
        {type = "item", name = "steel-plate",        amount = 40},
        {type = "item", name = "small-parts-01",     amount = 10},
        {type = "item", name = "iron-plate",         amount = 100},
        {type = "item", name = "steam-engine",       amount = 10},
        {type = "item", name = "electronic-circuit", amount = 30},
    },
    results = {
        {type = "item", name = "heavy-oil-refinery-mk01", amount = 1}
    }
}:add_unlock("oil-machines-mk01")

ITEM {
    type = "item",
    name = "heavy-oil-refinery-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hor-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "b",
    place_result = "heavy-oil-refinery-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "heavy-oil-refinery-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hor-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "heavy-oil-refinery-mk01"},
    fast_replaceable_group = "heavy-oil-refinery",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.4, -6.4}, {6.4, 6.4}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"hor"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "500kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(0, 62.5),
                west_position = util.by_pixel(0, 62.5),
                south_position = util.by_pixel(0, 62.5),
                east_position = util.by_pixel(0, 62.5),
                animation = {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/bot.png",
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
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/bot-mask.png",
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
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/top.png",
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
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/top-mask.png",
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
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/off-mk01.png",
                    width = 448,
                    height = 551,
                    frame_count = 1,
                    shift = util.by_pixel(16, -62)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/heavy-oil-refinery-mk01/off-mask.png",
                    width = 448,
                    height = 551,
                    frame_count = 1,
                    shift = util.by_pixel(16, -62),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
            pipe_connections = {{flow_direction = "input", position = {0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-6.0, 0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {6.0, 0}, direction = defines.direction.east}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/hor.ogg", volume = 1.7},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/hor.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
