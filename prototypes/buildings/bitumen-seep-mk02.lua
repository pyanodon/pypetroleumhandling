
RECIPE {
    type = "recipe",
    name = "oil-derrick-mk02",
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
        {"bitumen-seep-mk02", 1}
    }
}:add_unlock("oil-machines-mk02")

ITEM {
    type = "item",
    name = "bitumen-seep-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk02.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "a",
    place_result = "bitumen-seep-mk02",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "bitumen-seep-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk02.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bitumen-seep-mk02"},
    fast_replaceable_group = "oil-derrick-mk02",
    max_health = 700,
    resource_categories = {"bitumen-seep", 'oil-mk02'},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
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
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk02/base.png",
                width = 224,
                height = 427,
                line_length = 9,
                frame_count = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -103)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk02/shadow.png",
                width = 313,
                height = 192,
                line_length = 5,
                frame_count = 25,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(48, 0)
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

--RECIPE("oil-derrick-mk02"):replace_result("oil-derrick-mk02", "bitumen-seep-mk02")

data.raw["mining-drill"]['oil-derrick-mk02'].minable.result = "bitumen-seep-mk02"
