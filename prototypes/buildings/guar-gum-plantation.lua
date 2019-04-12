RECIPE {
    type = "recipe",
    name = "guar-gum-plantation",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"pipe", 20},
        {"botanical-nursery", 1},
        {"advanced-circuit", 10},
        {"small-parts-01", 30},
    },
    results = {
        {"guar-gum-plantation", 1}
    }
}:add_unlock("oil-machines-mk01")

ITEM {
    type = "item",
    name = "guar-gum-plantation",
    icon = "__pypetroleumhandling__/graphics/icons/guar-gum-plantation.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "guar-gum-plantation",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "guar-gum-plantation",
    icon = "__pypetroleumhandling__/graphics/icons/guar-gum-plantation.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "guar-gum-plantation"},
    fast_replaceable_group = "guar-gum-plantation",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"guar"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_second_per_watt = -1e-06
    },
    energy_usage = "400kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/guar-gum-plantation/left.png",
                width = 128,
                height = 238,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-48, -6)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/guar-gum-plantation/right.png",
                width = 96,
                height = 238,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(64, -6)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/guar-gum-plantation/sh-left.png",
                width = 128,
                height = 221,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-48, 4)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/guar-gum-plantation/sh-right.png",
                width = 105,
                height = 221,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(64, 4)
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/guar-gum.ogg", volume = 1.4},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/guar-gum.ogg", volume = 1.0},
        apparent_volume = 2.5
    }
}
