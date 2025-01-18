RECIPE {
    type = "recipe",
    name = "pumpjack-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "pumpjack-mk03",         amount = 1},
        {type = "item", name = "nbfe-alloy",            amount = 30},
        {type = "item", name = "concrete",              amount = 35},
        {type = "item", name = "low-density-structure", amount = 30},
        {type = "item", name = "small-parts-03",        amount = 40},
    },
    results = {
        {type = "item", name = "pumpjack-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "pumpjack-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "b",
    place_result = "pumpjack-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk04"},
    fast_replaceable_group = "pumpjack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_slots = 4,
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 3
        },
    },
    energy_usage = "750kW",
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, 5.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {3.0, -5.0}, direction = defines.direction.north}}
        },
    },
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a1.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-160, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a2.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-128, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a3.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-96, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a4.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-64, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a5.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-32, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a6.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a7.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(32, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a8.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(64, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a9.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(96, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a10.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(128, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a11.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(160, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a12.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(192, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a13.png",
                    width = 16,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(216, -23)
                },
            }
        },
    },

    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 0.8},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
