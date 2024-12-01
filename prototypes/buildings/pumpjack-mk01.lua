RECIPE {
    type = "recipe",
    name = "pumpjack-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "steam-engine",        amount = 1},
        {type = "item", name = "iron-plate",          amount = 50},
        {type = "item", name = "burner-mining-drill", amount = 1},
        {type = "item", name = "electronic-circuit",  amount = 2},
        {type = "item", name = "small-parts-01",      amount = 20},
    },
    results = {
        {type = "item", name = "pumpjack-mk01", amount = 1}
    }
}:add_unlock("drilling-fluid-mk01")

ITEM {
    type = "item",
    name = "pumpjack-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "b",
    place_result = "pumpjack-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk01"},
    fast_replaceable_group = "pumpjack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    forced_symmetry = "diagonal-pos",
    module_slots = 1,
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "250kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk01/right.png",
                    width = 96,
                    height = 214,
                    priority = "extra-high",
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.4,
                    shift = util.by_pixel(48, -20)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk01/left.png",
                    width = 96,
                    height = 214,
                    priority = "very-low",
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -20)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk01/small-pumpjack-sh.png",
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
    },

    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-0.5, 2.5}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.5, -2.5}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.8},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
