RECIPE {
    type = "recipe",
    name = "pumpjack-mk02",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"pumpjack-mk01", 1},
        {"steel-plate", 40},
        {"electric-mining-drill", 1},
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
    icon = "__pypetroleumhandling__/graphics/icons/pumpjack-mk02.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "b",
    place_result = "pumpjack-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk02",
    icon = "__pypetroleumhandling__/graphics/icons/pumpjack-mk02.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pumpjack-mk02"},
    fast_replaceable_group = "pumpjack-mk02",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.001,
    },
    energy_usage = "450kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/pumpjack-mk02/left.png",
                width = 128,
                height = 288,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(-51, -32)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/pumpjack-mk02/right.png",
                width = 128,
                height = 288,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(77, -32)
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, 4.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__base__/sound/pumpjack.ogg", volume = 1.2},
        idle_sound = {filename = "__base__/sound/pumpjack.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
