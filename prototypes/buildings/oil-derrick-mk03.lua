RECIPE {
    type = "recipe",
    name = "oil-derrick-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"oil-derrick-mk02", 1},
        {"distilator-mk02", 1},
        {"automated-factory-mk01", 1},
        {"steel-plate", 100},
        {"processing-unit", 15},
        {"small-parts-03", 25},
        {"pipe", 20},
    },
    results = {
        {"oil-derrick-mk03", 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "oil-derrick-mk03",
    icon = "__pypetroleumhandling__/graphics/icons/oil-derrick-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "a",
    place_result = "oil-derrick-mk03",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-derrick-mk03",
    icon = "__pypetroleumhandling__/graphics/icons/oil-derrick-mk03.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "oil-derrick-mk03"},
    fast_replaceable_group = "oil-derrick-mk03",
    max_health = 700,
    resource_categories = {"oil-mk03"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
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
          positions = { {-1, -5.0}, {5.0, -1}, {1, 5.0}, {-5.0, 1} }
        }
      }
    },
    energy_usage = "500kW",
    mining_speed = 1.5,
    resource_searching_radius = 0.49,
    vector_to_place_result = {-1, -4.85},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-derrick-mk03/bottom.png",
                width = 288,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-derrick-mk03/top.png",
                width = 288,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -288)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-derrick-mk03/sh-left.png",
                width = 160,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(-64, 0)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-derrick-mk03/sh-right.png",
                width = 192,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(112, 0)
            },
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
