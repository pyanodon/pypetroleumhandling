RECIPE {
    type = "recipe",
    name = "pumpjack-hightech",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"steam-engine", 5},
        {"fbreactor", 1},
        {"advanced-circuit", 20},
        {"nbfe-alloy", 30},
        {"concrete", 50},
        {"small-parts-02", 40},
        {"electric-engine-unit", 5},
    },
    results = {
        {"pumpjack-hightech", 1}
    }
}:add_unlock("basic-electronics")

ITEM {
    type = "item",
    name = "pumpjack-hightech",
    icon = "__pypetroleumhandling__/graphics/icons/pumpjack-hightech.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-hightech-buildings",
    order = "f",
    place_result = "pumpjack-hightech",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-hightech",
    icon = "__pypetroleumhandling__/graphics/icons/pumpjack-hightech.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pumpjack-hightech"},
    fast_replaceable_group = "pumpjack-hightech",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 2.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_second_per_watt = 1e-06
    },
    energy_usage = "600kW",
    ingredient_count = 10,
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 4.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/pumpjack-hightech/high-tech-anim.png",
                width = 252,
                height = 275,
                line_length = 8,
                frame_count = 50,
                animation_speed = 0.2,
                shift = util.by_pixel(14, -25)
            }
        }
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/pumpjack-mk01.ogg", volume = 1.2},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/pumpjack-mk01.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
