RECIPE {
    type = "recipe",
    name = "cracker-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lab",                amount = 1},
        {type = "item", name = "iron-plate",         amount = 50},
        {type = "item", name = "steam-engine",       amount = 5},
        {type = "item", name = "electronic-circuit", amount = 20},
        {type = "item", name = "small-parts-01",     amount = 20},
    },
    results = {
        {type = "item", name = "cracker-mk01", amount = 1}
    }
}:add_unlock("oil-machines-mk01")

ITEM {
    type = "item",
    name = "cracker-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/cracker-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "b",
    place_result = "cracker-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "cracker-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/cracker-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "cracker-mk01"},
    fast_replaceable_group = "cracker",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"cracker"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "600kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(16, -64),
                west_position = util.by_pixel(16, -64),
                south_position = util.by_pixel(16, -64),
                east_position = util.by_pixel(16, -64),
                animation = {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/poof.png",
                    --priority = "low",
                    frame_count = 100,
                    line_length = 10,
                    width = 64,
                    height = 96,
                    animation_speed = 0.5
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/left-mk01.png",
                    width = 128,
                    height = 234,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -3)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/left-mask.png",
                    width = 128,
                    height = 234,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -3),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/right-mk01.png",
                    width = 128,
                    height = 234,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -3)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/cracker-mk01/right-mask.png",
                    width = 128,
                    height = 234,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -3),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, 3.0}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/cracker.ogg", volume = 1.5},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/cracker.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
