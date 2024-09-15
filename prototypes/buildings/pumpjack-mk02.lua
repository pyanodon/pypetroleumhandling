RECIPE {
    type = "recipe",
    name = "pumpjack-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"pumpjack-mk01", 1},
        {"steel-plate", 40},
        {"advanced-circuit", 5},
        {"small-parts-02", 30},
        {"engine-unit", 5},
    },
    results = {
        {"pumpjack-mk02", 1}
    }
}:add_unlock("oil-machines-mk02")

ITEM {
    type = "item",
    name = "pumpjack-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "b",
    place_result = "pumpjack-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk02"},
    fast_replaceable_group = "pumpjack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"speed","consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "450kW",
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk02/left.png",
                width = 128,
                height = 288,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(-51, -32)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk02/right.png",
                width = 128,
                height = 288,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(77, -32)
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {-1.0, 3.4}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {1.0, -3.4}, direction = defines.direction.north}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.8},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
