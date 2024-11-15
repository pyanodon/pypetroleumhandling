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
    max_health = 2000,
    resource_categories = {"sulfur-patch"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 5,
    effect_receiver = {
        -- makes green modules 9x less effective in order to not trivalize the fluid fuel challenge.
        -- 20% consumption is still possible with green beacons later on.
        base_effect = {consumption = 9}
    },
    energy_source = {
        type = "fluid",
        effectivity = 1,
        emissions_per_minute = {
            pollution = 5
        },
        light_flicker = {
            minimum_light_size = 1.2,
            color = defines.color.yellow,
        },
        burns_fluid = true,
        scale_fluid_usage = true,
        destroy_non_fuel_fluid = false,
        fluid_box = {
            volume = 3000,
            pipe_connections = {
                {flow_direction = "input", position = {0, 3.0}, direction = defines.direction.south}
            },
            pipe_covers = py.pipe_covers(false, true, true, true),
            production_type = "input",
        },
        smoke = {
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
    energy_usage = "3MW",
    mining_power = 5,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_connector = circuit_connector_definitions["sulfur-mine"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
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
