
RECIPE {
    type = "recipe",
    name = "oil-derrick-mk04",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"steam-engine", 1},
        {"iron-plate", 30},
        {"electronic-circuit", 5},
        {"small-parts-01", 10},
        {"pipe", 10},
    },
    results = {
        {"bitumen-seep-mk04", 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "bitumen-seep-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "a",
    place_result = "bitumen-seep-mk04",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "bitumen-seep-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk04.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bitumen-seep-mk04"},
    fast_replaceable_group = "oil-derrick-mk04",
    max_health = 700,
    resource_categories = {"bitumen-seep", 'oil-mk04'},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    energy_source = {
        type = "burner",
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        fuel_category = 'drilling-fluid',
    },
    energy_usage = "100kW",
    mining_speed = 3,
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
          filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk04/off.png",
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
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk04/fluid.png",
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
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick-2.ogg", volume = 1.9},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick-2.ogg", volume = 1.5},
        apparent_volume = 2.5
    },
}

--RECIPE("oil-derrick-mk04"):replace_result("oil-derrick-mk04", "bitumen-seep-mk04")

data.raw["mining-drill"]['oil-derrick-mk04'].minable.result = "bitumen-seep-mk04"
