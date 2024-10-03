RECIPE {
    type = "recipe",
    name = "coalbed-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "coalbed-mk01", amount = 1},
        {type = "item", name = "electric-mining-drill", amount = 2},
        {type = "item", name = "evaporator", amount = 1},
        {type = "item", name = "engine-unit", amount = 6},
        {type = "item", name = "steel-plate", amount = 30},
        {type = "item", name = "small-parts-02", amount = 20},
    },
    results = {
        {type = "item", name = "coalbed-mk02", amount = 1}
    }
}:add_unlock("coalbed-mk02")

ITEM {
    type = "item",
    name = "coalbed-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/coalbed-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "b",
    place_result = "coalbed-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "coalbed-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/coalbed-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "coalbed-mk02"},
    fast_replaceable_group = "coalbed",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"coalbed"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "950kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/left-mk01.png",
                    width = 96,
                    height = 298,
                    line_length = 21,
                    frame_count = 124,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-64, -32)
                },
    			{
    				filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/left-mask.png",
    				width = 96,
    				height = 298,
    				line_length = 21,
    				frame_count = 124,
    				animation_speed = 0.5,
    				shift = util.by_pixel(-64, -32),
    				tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
    			},
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/mid-mk01.png",
                    width = 96,
                    height = 298,
                    line_length = 21,
                    frame_count = 124,
                    animation_speed = 0.5,
                    shift = util.by_pixel(32, -32)
                },
    			{
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/mid-mask.png",
                    width = 96,
                    height = 298,
                    line_length = 21,
                    frame_count = 124,
                    animation_speed = 0.5,
                    shift = util.by_pixel(32, -32),
    				tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/coalbed-mk01/right-mk01.png",
                    width = 64,
                    height = 298,
                    line_length = 21,
                    frame_count = 124,
                    animation_speed = 0.5,
                    shift = util.by_pixel(112, -32)
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
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.4}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-3.4, 0.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.4}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.4, 0.0}, direction = defines.direction.east}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/coalbed.ogg", volume = 1.3},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/coalbed.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
