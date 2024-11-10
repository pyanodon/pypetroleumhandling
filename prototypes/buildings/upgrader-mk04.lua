RECIPE {
    type = "recipe",
    name = "upgrader-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "upgrader-mk03",         amount = 1},
        {type = "item", name = "low-density-structure", amount = 20},
        {type = "item", name = "nbfe-alloy",            amount = 20},
    },
    results = {
        {type = "item", name = "upgrader-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "upgrader-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/upgrader-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "b",
    place_result = "upgrader-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "upgrader-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/upgrader-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "upgrader-mk04"},
    fast_replaceable_group = "upgrader",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 4,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"upgrader"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "1200kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(-48, -128),
                west_position = util.by_pixel(-48, -128),
                south_position = util.by_pixel(-48, -128),
                east_position = util.by_pixel(-48, -128),
                animation = {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/left-light.png",
                    --priority = "low",
                    frame_count = 80,
                    line_length = 16,
                    width = 128,
                    height = 224,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(64, -128),
                west_position = util.by_pixel(64, -128),
                south_position = util.by_pixel(64, -128),
                east_position = util.by_pixel(64, -128),
                animation = {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/right-light.png",
                    --priority = "low",
                    frame_count = 80,
                    line_length = 16,
                    width = 96,
                    height = 224,
                    animation_speed = 0.5
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/left-mk01.png",
                    width = 128,
                    height = 352,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-48, -64)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/left-mk01-mask.png",
                    width = 128,
                    height = 352,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-48, -64),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/right-mk01.png",
                    width = 128,
                    height = 352,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.2,
                    shift = util.by_pixel(80, -64)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/upgrader-mk01/right-mk01-mask.png",
                    width = 128,
                    height = 352,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.2,
                    shift = util.by_pixel(80, -64),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
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
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/upgrader.ogg", volume = 1.1},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/upgrader.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
