RECIPE {
    type = "recipe",
    name = "reformer-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "distilator", amount = 1},
        {type = "item", name = "steel-plate", amount = 40},
        {type = "item", name = "iron-plate", amount = 100},
        {type = "item", name = "steam-engine", amount = 10},
        {type = "item", name = "electronic-circuit", amount = 30},
        {type = "item", name = "small-parts-01", amount = 10},
    },
    results = {
        {type = "item", name = "reformer-mk01", amount = 1}
    }
}:add_unlock("oil-machines-mk01")

ITEM {
    type = "item",
    name = "reformer-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/reformer-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "b",
    place_result = "reformer-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "reformer-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/reformer-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "reformer-mk01"},
    fast_replaceable_group = "reformer",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.4, -6.4}, {6.4, 6.4}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"reformer"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "500kW",
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, -6.4}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -6.4}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, 6.4}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, 6.4}, direction = defines.direction.south}}
        },

        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-6.4, 2.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-6.4, -2.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {6.4, 2.0}, direction = defines.direction.east}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {6.4, -2.0}, direction = defines.direction.east}}
        },
        off_when_no_fluid_recipe = false,
    },
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i1.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(-176, -176)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i1-mask.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(-176, -176),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i2.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(-112, -176)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i2-mask.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(-112, -176),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i3.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -176)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i3-mask.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -176),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i4.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -176)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i4-mask.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -176),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i5.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -176)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i5-mask.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -176),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i6.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(144, -176)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i6-mask.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(144, -176),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i7.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(208, -176)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i7-mask.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(208, -176),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/reformer-mk01/i8.png",
                width = 64,
                height = 769,
                frame_count = 50,
                line_length = 25,
                animation_speed = 0.4,
                shift = util.by_pixel(272, -176)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/reformer.ogg", volume = 1.4},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/reformer.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
