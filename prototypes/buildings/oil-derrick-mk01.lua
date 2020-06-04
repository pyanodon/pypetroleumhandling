RECIPE {
    type = "recipe",
    name = "oil-derrick-mk01",
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
        {"oil-derrick-mk01", 1}
    }
}:add_unlock("oil-machines-mk01")

ITEM {
    type = "item",
    name = "oil-derrick-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "a",
    place_result = "oil-derrick-mk01",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-derrick-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "oil-derrick-mk01"},
    fast_replaceable_group = "oil-derrick-mk01",
    max_health = 700,
    resource_categories = {"oil-mk01"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 20,
    },
    output_fluid_box =
    {
      base_area = 5,
      base_level = 1,
      --height = 10,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
      pipe_connections =
      {
        {
          positions = { {0, -3}, {3, 0}, {0, 3}, {-3, 0} }
        }
      }
    },
    energy_usage = "90kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -2.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk01/base.png",
                width = 169,
                height = 179,
                line_length = 10,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(5, -10)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk01/piston.png",
                width = 32,
                height = 64,
                line_length = 25,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -4)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk01/gush.png",
                frame_count = 100,
                line_length = 25,
                width = 32,
                height = 96,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -97)
            },
    },
},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick.ogg", volume = 1.0},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
}
