RECIPE {
    type = "recipe",
    name = "pumpjack-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"steel-plate", 1},
        {"iron-plate", 50},
        {"burner-mining-drill", 1},
        {"electronic-circuit", 2},
        {"small-parts-01", 20},
    },
    results = {
        {"pumpjack-mk01", 1}
    }
}:add_unlock("oil-machines-mk01")

ITEM {
    type = "item",
    name = "pumpjack-mk01",
    icon = "__pypetroleumhandling__/graphics/icons/pumpjack-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "b",
    place_result = "pumpjack-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk01",
    icon = "__pypetroleumhandling__/graphics/icons/pumpjack-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pumpjack-mk01"},
    fast_replaceable_group = "pumpjack-mk01",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "250kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/pumpjack-mk01/right.png",
                width = 96,
                height = 214,
                priority = "extra-high",
                line_length = 10,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(48, -20)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/pumpjack-mk01/left.png",
                width = 96,
                height = 214,
                priority = "very-low",
                line_length = 10,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -20)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/pumpjack-mk01/small-pumpjack-sh.png",
                width = 217,
                height = 165,
                line_length = 8,
                frame_count = 50,
                animation_speed = 0.4,
                draw_as_shadow = true,
                shift = util.by_pixel(11, 15)
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
            pipe_connections = {{type = "output", position = {-0.5, 3.5}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.5, -3.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/pumpjack-mk01.ogg", volume = 1.2},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/pumpjack-mk01.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
