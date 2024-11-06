RECIPE {
    type = "recipe",
    name = "oil-derrick-mk03",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item",                                        name = "bitumen-seep-mk02",    amount = 1},
        {mods.pyrawores and "distilator-mk03" or "distilator", 1},
        {type = "item",                                        name = "steel-plate",          amount = 100},
        {type = "item",                                        name = "electric-engine-unit", amount = 10},
        {type = "item",                                        name = "processing-unit",      amount = 15},
        {type = "item",                                        name = "small-parts-03",       amount = 25},
        {type = "item",                                        name = "pipe",                 amount = 20},
    },
    results = {
        {type = "item", name = "bitumen-seep-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

ITEM {
    type = "item",
    name = "bitumen-seep-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "a",
    place_result = "bitumen-seep-mk03",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-derrick-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bitumen-seep-mk03"},
    placeable_by = {item = "bitumen-seep-mk03", count = 1},
    fast_replaceable_group = "oil-derrick",
    max_health = 700,
    resource_categories = {"oil-mk03", "oil-mk02", "oil-mk01"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "productivity"},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 20
        },
    },
    output_fluid_box =
    {
        volume = 3000,
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_connections = {
            {flow_direction = "input-output", position = {0, -4.0}, direction = defines.direction.north},
            {flow_direction = "input-output", position = {4.0, 0},  direction = defines.direction.east},
            {flow_direction = "input-output", position = {0, 4.0},  direction = defines.direction.south},
            {flow_direction = "input-output", position = {-4.0, 0}, direction = defines.direction.west},
        }
    },
    energy_usage = "500kW",
    mining_speed = 3,
    resource_searching_radius = 0.49,
    vector_to_place_result = {-1, -4.85},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["oil-derrick-mk03"].points,
    circuit_connector_sprites = circuit_connector_definitions["oil-derrick-mk03"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    monitor_visualization_tint = {r = 78, g = 173, b = 255},
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk03/bottom.png",
                width = 288,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk03/top.png",
                width = 288,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -288)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk03/sh-left.png",
                width = 160,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(-64, 0)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk03/sh-right.png",
                width = 192,
                height = 288,
                line_length = 7,
                frame_count = 49,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(112, 0)
            },
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick-2.ogg", volume = 1.9},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick-2.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
}

local seep = table.deepcopy(data.raw["mining-drill"]["oil-derrick-mk03"])
seep.name = "bitumen-seep-mk03"
seep.resource_categories = {"bitumen-seep", "oil-mk03", "oil-mk02", "oil-mk01"}
data:extend {seep}

ENTITY {
    type = "assembling-machine",
    name = "bitumen-seep-mk03-base",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/coalbed-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    --minable = {mining_time = 0.5, result = "coalbed-mk01"},
    max_health = 100,
    corpse = "medium-remnants",
    hidden = true,
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{0, 0}, {0, 0}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 0,
    allowed_effects = {},
    crafting_categories = {"drilling-fluid"},
    crafting_speed = 1,
    energy_source = {
        type = "void",
    },
    energy_usage = "1W",
    fixed_recipe = "drilling-fluids",
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2, 4.0}, direction = defines.direction.south}}
        },
    },
    selectable_in_game = false,
    localised_name = {"entity-name.oil-derrick-mk03"},
    localised_description = {"entity-description.oil-derrick-mk03"}
}
