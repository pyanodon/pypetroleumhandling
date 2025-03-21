RECIPE {
    type = "recipe",
    name = "guar-gum-plantation",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "pipe",               amount = 20},
        {type = "item", name = "steel-plate",        amount = 20},
        {type = "item", name = "botanical-nursery",  amount = 1},
        {type = "item", name = "steam-engine",       amount = 2},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "small-parts-01",     amount = 30},
    },
    results = {
        {type = "item", name = "guar-gum-plantation", amount = 1}
    }
}:add_unlock("guar")

ITEM {
    type = "item",
    name = "guar-gum-plantation",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/guar-gum-plantation-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "guar-gum-plantation",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "guar-gum-plantation",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/guar-gum-plantation-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "guar-gum-plantation"},
    fast_replaceable_group = "guar-gum-plantation",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"guar"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -35
        },
    },
    energy_usage = "400kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/left.png",
                    width = 128,
                    height = 238,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-48, -6)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/left-mask.png",
                    width = 128,
                    height = 238,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-48, -6),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/right.png",
                    width = 96,
                    height = 238,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(64, -6)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/right-mask.png",
                    width = 96,
                    height = 238,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(64, -6),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/sh-left.png",
                    width = 128,
                    height = 221,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.3,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-48, 4)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/sh-right.png",
                    width = 105,
                    height = 221,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.3,
                    draw_as_shadow = true,
                    shift = util.by_pixel(64, 4)
                },
            }
        },
    },

    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -3.0}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/guar-gum.ogg", volume = 1.4},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/guar-gum.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
    next_upgrade = "guar-gum-plantation-mk02"
}
