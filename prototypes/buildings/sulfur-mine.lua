RECIPE {
    type = "recipe",
    name = "sulfur-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "electric-mining-drill", amount = 5},
        {type = "item", name = "steel-plate",           amount = 60},
        {type = "item", name = "distilator",            amount = 1},
        {type = "item", name = "electronic-circuit",    amount = 40}
    },
    results = {
        {type = "item", name = "sulfur-mine", amount = 1}
    }
}:add_unlock("sulfur-processing")

ITEM {
    type = "item",
    name = "sulfur-mine",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/sulfur-mine.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "a",
    place_result = "sulfur-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "sulfur-mine",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/sulfur-mine.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "sulfur-mine"},
    fast_replaceable_group = "sulfur-mine",
    max_health = 600,
    resource_categories = {"sulfur-patch"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},

    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 5,
    energy_source =
    {
        type = "burner",
        fuel_categories = {"jerry"},
        --fuel_categories = {"chemical", "biomass"},
        effectivity = 1,
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        emissions_per_minute = {
            pollution = 50
        },
        smoke =
        {
            {
                name = "smoke",
                north_position = {2, -3.75},
                east_position = {2, -3.75},
                west_position = {2, -3.75},
                south_position = {2, -3.75},
                frequency = 90,
                starting_vertical_speed = 0.09,
                slow_down_factor = 1,
                starting_frame_deviation = 60
            },
        },
    },
    energy_usage = "500kW",
    mining_power = 5,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["sulfur-mine"].points,
    circuit_connector_sprites = circuit_connector_definitions["sulfur-mine"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/sulfur-mine/sulfur-mine.png",
                    width = 249,
                    height = 257,
                    line_length = 8,
                    frame_count = 15,
                    animation_speed = 0.3,
                    shift = util.by_pixel(12, -16)
                },

            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/sulfur-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/sulfur-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
