RECIPE {
    type = "recipe",
    name = "oil-sand-extractor-mk04",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "oil-sand-extractor-mk03", amount = 1},
        {type = "item", name = "low-density-structure",   amount = 20},
        {type = "item", name = "nbfe-alloy",              amount = 20},
    },
    results = {
        {type = "item", name = "oil-sand-extractor-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "oil-sand-extractor-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-sand-extractor-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "a",
    place_result = "oil-sand-extractor-mk04",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-sand-extractor-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-sand-extractor-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "oil-sand-extractor-mk04"},
    fast_replaceable_group = "oil-sand-extractor",
    max_health = 700,
    resource_categories = {"oil-sand"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "1100kW",
    mining_power = 1,
    resource_searching_radius = 6.49,
    vector_to_place_result = {0, -5.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_connector = circuit_connector_definitions["oil-sand-extractor-mkxx"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-sand-extractor.ogg", volume = 1.0},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-sand-extractor.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
