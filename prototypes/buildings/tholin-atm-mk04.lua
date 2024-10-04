RECIPE {
    type = "recipe",
    name = "tholin-atm-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "tholin-atm-mk03", amount = 1},
        {type = "item", name = "low-density-structure", amount = 25},
        {type = "item", name = "nichrome", amount = 30},
        {type = "item", name = "electric-engine-unit", amount = 5},
    },
    results = {
        {type = "item", name = "tholin-atm-mk04", amount = 1}
    }
}:add_unlock("tholin-mk04")

ITEM {
    type = "item",
    name = "tholin-atm-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tholin-atm-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "b",
    place_result = "tholin-atm-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "tholin-atm-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tholin-atm-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "tholin-atm-mk04"},
    fast_replaceable_group = "tholin-atm",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    fixed_recipe = "proto-tholins",
    --fixed_recipe = "tholins",
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"tholin-atm"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "1500kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/base-mk01.png",
                    width = 300,
                    height = 352,
                    line_length = 6,
                    frame_count = 30,
                    run_mode= "forward-then-backward",
                    animation_speed = 0.35,
                    shift = util.by_pixel(-37, -64)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/base-mk01-mask.png",
                    width = 300,
                    height = 352,
                    line_length = 6,
                    frame_count = 30,
                    run_mode= "forward-then-backward",
                    animation_speed = 0.35,
                    shift = util.by_pixel(-37, -64),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/baloon-mk01.png",
                    width = 320,
                    height = 384,
                    line_length = 6,
                    frame_count = 30,
                    run_mode= "forward-then-backward",
                    animation_speed = 0.35,
                    shift = util.by_pixel(-173, -360)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/baloon-mk01-mask.png",
                    width = 320,
                    height = 384,
                    line_length = 6,
                    frame_count = 30,
                    run_mode= "forward-then-backward",
                    animation_speed = 0.35,
                    shift = util.by_pixel(-173, -360),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/helice-mk01.png",
                    width = 96,
                    height = 64,
                    line_length = 6,
                    frame_count = 58,
                    animation_speed = 0.35,
                    shift = util.by_pixel(21, -208)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/helice-mk01-mask.png",
                    width = 96,
                    height = 64,
                    line_length = 6,
                    frame_count = 58,
                    animation_speed = 0.35,
                    shift = util.by_pixel(21, -208),
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
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.0}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tholin-atm.ogg", volume = 1.5},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tholin-atm.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
