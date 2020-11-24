RECIPE {
    type = "recipe",
    name = "space-factory-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"iron-plate", 40},
        {"assembling-machine-1", 2},
        {"iron-gear-wheel", 20},
        {"inserter", 4},
        {"electronic-circuit", 10}
    },
    results = {
        {"space-factory-mk01", 1}
    }
}:add_unlock("coal-processing-1")

ITEM {
    type = "item",
    name = "space-factory-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/space-factory-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "c",
    place_result = "space-factory-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-factory-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/space-factory-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "space-factory-mk01"},
    fast_replaceable_group = "automated-factory",
    max_health = 800,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.7, -3.7}, {3.7, 3.7}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    collision_mask = {'ground-tile','water-tile','layer-14', 'player-layer', 'item-layer'},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"space-crafting"},
    crafting_speed = 1.0,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1000kW",
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/space-factory/bottom.png",
                width = 288,
                height = 32,
                line_length = 7,
                frame_count = 100,
                shift = util.by_pixel(16, 110),
                animation_speed = 0.36,
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/space-factory/left.png",
                width = 96,
                height = 224,
                line_length = 20,
                frame_count = 100,
                shift = util.by_pixel(-80, -16),
                animation_speed = 0.36,
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/space-factory/left-mask.png",
                width = 96,
                height = 224,
                line_length = 20,
                frame_count = 100,
                shift = util.by_pixel(-80, -16),
                animation_speed = 0.36,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/space-factory/mid.png",
                width = 96,
                height = 224,
                line_length = 20,
                frame_count = 100,
                shift = util.by_pixel(16, -16),
                animation_speed = 0.36,
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/space-factory/mid-mask.png",
                width = 96,
                height = 224,
                line_length = 20,
                frame_count = 100,
                shift = util.by_pixel(16, -16),
                animation_speed = 0.36,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/space-factory/right.png",
                width = 96,
                height = 224,
                line_length = 20,
                frame_count = 100,
                shift = util.by_pixel(112, -16),
                animation_speed = 0.36,
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/space-factory/right-mask.png",
                width = 96,
                height = 224,
                line_length = 20,
                frame_count = 100,
                shift = util.by_pixel(112, -16),
                animation_speed = 0.36,
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0.3, 3.06}, {-0.00, -0.93}, {0.55, 0.15}, {-0.5, 0.15}),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.5, 4.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0.3, 3.06}, {-0.00, -0.93}, {0.55, 0.15}, {-0.5, 0.15}),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.5, -4.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0.3, 3.06}, {-0.00, -0.93}, {0.55, 0.15}, {-0.5, 0.15}),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 4.5}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/automated-factory.ogg", volume = 1.0},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/automated-factory.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}
