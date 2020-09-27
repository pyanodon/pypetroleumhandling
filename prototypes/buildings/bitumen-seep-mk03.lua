--[[
RECIPE {
    type = "recipe",
    name = "oil-derrick-mk03",
    energy_required = 15,
    enabled = true,
    ingredients = {
        {"steam-engine", 1},
        {"iron-plate", 30},
        {"electronic-circuit", 5},
        {"small-parts-01", 10},
        {"pipe", 10},
    },
    results = {
        {"oil-derrick-mk03", 1}
    }
}:add_unlock("oil-machines-mk03")
]] --

ITEM {
    type = "item",
    name = "bitumen-seep-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "a",
    place_result = "bitumen-seep-mk03",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "bitumen-seep-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk03.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bitumen-seep-mk03"},
    fast_replaceable_group = "oil-derrick-mk03",
    max_health = 700,
    resource_categories = {"bitumen-seep"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    energy_source = {
        type = "fluid",
        usage_priority = "secondary-input",
        emissions_per_minute = 20,
        fluid_usage_per_tick = 30,
        fluid_box = {
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_connections = {
                {type = "input", positions = {{-1, -5.0}, {5.0, -1}, {1, 5.0}, {-5.0, 1}}}
            },
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            production_type = "input",
            minimum_temperature = 5,
            maximum_temperature = 5
        }
    },
    energy_usage = "500kW",
    mining_speed = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {-1, -4.85},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    monitor_visualization_tint = {r = 78, g = 173, b = 255},
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk03/bottom.png",
                width = 288,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk03/top.png",
                width = 288,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -288)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk03/sh-left.png",
                width = 160,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(-64, 0)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk03/sh-right.png",
                width = 192,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(112, 0)
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick-2.ogg", volume = 1.9},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick-2.ogg", volume = 1.5},
        apparent_volume = 2.5
    }
}

RECIPE("oil-derrick-mk03"):replace_result("oil-derrick-mk03", "bitumen-seep-mk03")

data.raw["mining-drill"]['oil-derrick-mk03'].minable.result = "bitumen-seep-mk03"
