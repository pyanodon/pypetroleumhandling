RECIPE {
    type = "recipe",
    name = "oil-derrick-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"oil-derrick-mk03", 1},
        {"distilator-mk02", 1},
        {"nbfe-alloy", 50},
        {"low-density-structure", 30},
        {"pipe", 20},
    },
    results = {
        {"oil-derrick-mk04", 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "oil-derrick-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/oil-derrick-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "a",
    place_result = "oil-derrick-mk04",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-derrick-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/oil-derrick-mk04.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "oil-derrick-mk04"},
    fast_replaceable_group = "oil-derrick-mk04",
    max_health = 700,
    resource_categories = {"oil-mk04"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_second_per_watt = 10 / 80000,
    },
    output_fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
      pipe_connections =
      {
        {
          positions = { {0, -6}, {6, 0}, {0, 6}, {-6, 0} }
        }
      }
    },
    energy_usage = "1000kW",
    mining_speed = 1.5,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -5.9},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_render_layer = "lower-object-above-shadow",
    base_picture =
    {
      sheets =
      {
        {
          filename = "__pypetroleumhandling__/graphics/entity/oil-derrick-mk04/off.png",
          priority = "extra-high",
          width = 384,
          height = 437,
          frame_count = 1,
          shift = util.by_pixel(16, -43),
        },
    },
},
    animations = {
        north = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-derrick-mk04/fluid.png",
                width = 224,
                height = 192,
                line_length = 9,
                frame_count = 80,
                animation_speed = 0.15,
                shift = util.by_pixel(-29, 29)
            },
        }
    },
},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/oil-derrick-2.ogg", volume = 1.9},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/oil-derrick-2.ogg", volume = 1.5},
        apparent_volume = 2.5
    },
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
}
