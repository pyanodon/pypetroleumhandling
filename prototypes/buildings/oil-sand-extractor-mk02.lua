RECIPE {
    type = "recipe",
    name = "oil-sand-extractor-mk02",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "oil-sand-extractor-mk01", amount = 1},
        {type = "item", name = "advanced-circuit", amount = 25},
        {type = "item", name = "concrete", amount = 20},
        {type = "item", name = "engine-unit", amount = 3},
        {type = "item", name = "plastic-bar", amount = 40},
        {type = "item", name = "niobium-plate", amount = 30},
        {type = "item", name = "small-parts-02", amount = 20},
    },
    results = {
        {type = "item", name = "oil-sand-extractor-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

ITEM {
    type = "item",
    name = "oil-sand-extractor-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-sand-extractor-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "a",
    place_result = "oil-sand-extractor-mk02",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-sand-extractor-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-sand-extractor-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "oil-sand-extractor-mk02"},
    fast_replaceable_group = "oil-sand-extractor",
    max_health = 700,
    resource_categories = {"oil-sand"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "700kW",
    mining_power = 1,
    resource_searching_radius = 6.49,
    vector_to_place_result = {0, -5.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["oil-sand-extractor-mkxx"].points,
    circuit_connector_sprites = circuit_connector_definitions["oil-sand-extractor-mkxx"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-sand-extractor-mk01/oil-sand-extractor-mk01-a.png",
                width = 128,
                height = 371,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(-112, 0),
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-sand-extractor-mk01/oil-sand-extractor-mk01-a-mask.png",
                width = 128,
                height = 371,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(-112, 0),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-sand-extractor-mk01/oil-sand-extractor-mk01-b.png",
                width = 128,
                height = 371,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(16, 0),
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-sand-extractor-mk01/oil-sand-extractor-mk01-b-mask.png",
                width = 128,
                height = 371,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(16, 0),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-sand-extractor-mk01/oil-sand-extractor-mk01-c.png",
                width = 96,
                height = 371,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(128, 0),
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-sand-extractor-mk01/oil-sand-extractor-mk01-c-mask.png",
                width = 96,
                height = 371,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(128, 0),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-sand-extractor-mk01/sh-a.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-112, 0),
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-sand-extractor-mk01/sh-b.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(16, 0),
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-sand-extractor-mk01/sh-c.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(144, 0),
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-sand-extractor.ogg", volume = 1.0},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-sand-extractor.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
