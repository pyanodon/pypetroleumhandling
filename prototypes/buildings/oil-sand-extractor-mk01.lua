RECIPE {
    type = "recipe",
    name = "oil-sand-extractor-mk01",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "electric-mining-drill", amount = 4},
        {type = "item", name = "steel-plate",           amount = 30},
        {type = "item", name = "electronic-circuit",    amount = 10},
        {type = "item", name = "steam-engine",          amount = 10},
        {type = "item", name = "small-parts-01",        amount = 10},
    },
    results = {
        {type = "item", name = "oil-sand-extractor-mk01", amount = 1}
    }
}:add_unlock("oil-sands")

ITEM {
    type = "item",
    name = "oil-sand-extractor-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-sand-extractor-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "a",
    place_result = "oil-sand-extractor-mk01",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-sand-extractor-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-sand-extractor-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "oil-sand-extractor-mk01"},
    fast_replaceable_group = "oil-sand-extractor",
    max_health = 700,
    resource_categories = {"oil-sand"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "500kW",
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
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
