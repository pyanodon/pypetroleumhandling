RECIPE {
    type = "recipe",
    name = "guar-gum-plantation-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "guar-gum-plantation-mk02", amount = 1},
        {type = "item", name = "steel-plate", amount = 100},
        {type = "item", name = "processing-unit", amount = 15},
        {type = "item", name = "small-parts-03", amount = 25},
        {type = "item", name = "electric-engine-unit", amount = 5},
        {type = "item", name = "plastic-bar", amount = 100},
    },
    results = {
        {type = "item", name = "guar-gum-plantation-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "guar-gum-plantation-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/guar-gum-plantation-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "guar-gum-plantation-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "guar-gum-plantation-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/guar-gum-plantation-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "guar-gum-plantation-mk03"},
    fast_replaceable_group = "guar-gum-plantation",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"guar"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -35
        },
    },
    energy_usage = "1000kW",
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
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
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
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
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

    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 3.4}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, -3.4}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, 3.4}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -3.4}, direction = defines.direction.north}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/guar-gum.ogg", volume = 1.4},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/guar-gum.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
    next_upgrade = 'guar-gum-plantation-mk04'
}
