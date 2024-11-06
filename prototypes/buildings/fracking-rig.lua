RECIPE {
    type = "recipe",
    name = "fracking-rig",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item",                                        name = "stone-brick",     amount = 200},
        {type = "item",                                        name = "pipe",            amount = 500},
        {type = "item",                                        name = "concrete",        amount = 100},
        {type = "item",                                        name = "processing-unit", amount = 50},
        {type = "item",                                        name = "small-parts-03",  amount = 200},
        {mods.pyrawores and "distilator-mk03" or "distilator", 4},
        {type = "item",                                        name = "reformer-mk03",   amount = 4},
    },
    results = {
        {type = "item", name = "fracking-rig", amount = 1}
    }
}:add_unlock("fracking")

ITEM {
    type = "item",
    name = "fracking-rig",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/fracking-rig.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "fracking-rig",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fracking-rig",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/fracking-rig.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fracking-rig"},
    fast_replaceable_group = "fracking",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.4, -6.4}, {6.4, 6.4}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"fracking"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "6000kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/1.png",
                    width = 415,
                    height = 96,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, 160)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/2.png",
                    width = 415,
                    height = 96,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, 64)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/3.png",
                    width = 415,
                    height = 96,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, -32)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/4.png",
                    width = 415,
                    height = 96,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, -128)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/5.png",
                    width = 415,
                    height = 96,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, -224)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/6.png",
                    width = 415,
                    height = 32,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(0, -288)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/sh1.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    draw_as_shadow = true,
                    shift = util.by_pixel(16, 144)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/sh2.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    draw_as_shadow = true,
                    shift = util.by_pixel(16, 48)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/sh3.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    draw_as_shadow = true,
                    shift = util.by_pixel(16, -16)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/sh4.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    draw_as_shadow = true,
                    shift = util.by_pixel(16, -112)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/fracking-rig/sh5.png",
                    width = 448,
                    height = 32,
                    line_length = 4,
                    frame_count = 80,
                    animation_speed = 0.3,
                    draw_as_shadow = true,
                    shift = util.by_pixel(16, -208)
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
            pipe_connections = {{flow_direction = "input", position = {4.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-4.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {4.0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-4.0, 6.0}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/fracking-rig.ogg", volume = 1.2},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/fracking-rig.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
