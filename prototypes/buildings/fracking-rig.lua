RECIPE {
    type = "recipe",
    name = "fracking-rig",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"stone-brick", 200},
        {"pipe", 500},
        {"concrete", 100},
        {"processing-unit", 50},
        {"small-parts-03", 200},
        {"distilator-mk03", 4},
        {"reformer-mk03", 4},
    },
    results = {
        {"fracking-rig", 1}
    }
}:add_unlock("fracking")

ITEM {
    type = "item",
    name = "fracking-rig",
    icon = "__pypetroleumhandling__/graphics/icons/fracking-rig.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "fracking-rig",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fracking-rig",
    icon = "__pypetroleumhandling__/graphics/icons/fracking-rig.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fracking-rig"},
    fast_replaceable_group = "fracking",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.4, -6.4}, {6.4, 6.4}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"fracking"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "2300kW",
    ingredient_count = 15,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/1.png",
                width = 415,
                height = 96,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(0, 160)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/2.png",
                width = 415,
                height = 96,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(0, 64)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/3.png",
                width = 415,
                height = 96,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -32)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/4.png",
                width = 415,
                height = 96,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -128)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/5.png",
                width = 415,
                height = 96,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -224)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/6.png",
                width = 415,
                height = 32,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -288)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/sh1.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(16, 144)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/sh2.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(16, 48)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/sh3.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(16, -16)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/sh4.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 80,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(16, -112)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/fracking-rig/sh5.png",
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
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-4.0, -7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.0, 7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-4.0, 7.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/fracking-rig.ogg", volume = 1.2},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/fracking-rig.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
