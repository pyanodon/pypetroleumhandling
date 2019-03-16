RECIPE {
    type = "recipe",
    name = "oil-sand-extractor-mk04",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"oil-sand-extractor-mk03", 1},
        {"low-density-structure", 20},
        {"nbfe-alloy", 20},
    },
    results = {
        {"oil-sand-extractor-mk04", 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "oil-sand-extractor-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/oil-sand-extractor-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "a",
    place_result = "oil-sand-extractor-mk04",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-sand-extractor-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/oil-sand-extractor-mk04.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "oil-sand-extractor-mk04"},
    fast_replaceable_group = "oil-sand-extractor",
    max_health = 700,
    resource_categories = {"oil-sand"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.001,
    },
    energy_usage = "1100kW",
    mining_power = 1,
    resource_searching_radius = 5.49,
    vector_to_place_result = {0, -5.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-sand-extractor-mk04/oil-sand-extractor-mk04-a.png",
                width = 128,
                height = 371,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(-112, 0)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-sand-extractor-mk04/oil-sand-extractor-mk04-b.png",
                width = 128,
                height = 371,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(16, 0)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-sand-extractor-mk04/oil-sand-extractor-mk04-c.png",
                width = 96,
                height = 371,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(128, 0)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-sand-extractor-mk01/sh-a.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-112, 0)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-sand-extractor-mk01/sh-b.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(16, 0)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/oil-sand-extractor-mk01/sh-c.png",
                width = 128,
                height = 352,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(144, 0)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/oil-sand-extractor.ogg", volume = 1.0},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/oil-sand-extractor.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}
