
RECIPE {
    type = "recipe",
    name = "oil-derrick-mk01",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "steam-engine", amount = 1},
        {type = "item", name = "iron-plate", amount = 30},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "small-parts-01", amount = 10},
        {type = "item", name = "pipe", amount = 10},
    },
    results = {
        {type = "item", name = "bitumen-seep-mk01", amount = 1}
    }
}:add_unlock("drilling-fluid-mk01")

ITEM {
    type = "item",
    name = "bitumen-seep-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "a",
    place_result = "bitumen-seep-mk01",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-derrick-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bitumen-seep-mk01"},
    placeable_by = {item = "bitumen-seep-mk01", count = 1},
    fast_replaceable_group = "oil-derrick",
    max_health = 700,
    resource_categories = {"oil-mk01"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_slots = 1,
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
        volume = 1000,
        --height = 10,
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_connections = {
            {flow_direction = "input-output", position = {0, -2.0}, direction = defines.direction.north},
            {flow_direction = "input-output", position = {2.0, 0}, direction = defines.direction.east},
            {flow_direction = "input-output", position = {0, 2.0}, direction = defines.direction.south},
            {flow_direction = "input-output", position = {-2.0, 0}, direction = defines.direction.west},
        }
    },
    energy_usage = "90kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -2.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["oil-derrick-mk01"].points,
    circuit_connector_sprites = circuit_connector_definitions["oil-derrick-mk01"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    monitor_visualization_tint = {r=78, g=173, b=255},
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk01/base.png",
                width = 169,
                height = 179,
                line_length = 10,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(5, -10)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk01/piston.png",
                width = 32,
                height = 64,
                line_length = 25,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -4)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk01/gush.png",
                frame_count = 100,
                line_length = 25,
                width = 32,
                height = 96,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -97)
            },
    },
},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick.ogg", volume = 1.0},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
}

local seep = table.deepcopy(data.raw['mining-drill']['oil-derrick-mk01'])
seep.name = 'bitumen-seep-mk01'
seep.resource_categories = {'bitumen-seep', 'oil-mk01'}
data:extend{seep}

ENTITY {
    type = "assembling-machine",
    name = "bitumen-seep-mk01-base",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/coalbed-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    --minable = {mining_time = 0.5, result = "coalbed-mk01"},
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{0,0}, {0,0}},
    match_animation_speed_to_activity = false,
    module_slots = 0,
    allowed_effects = {},
    crafting_categories = {"drilling-fluid"},
    crafting_speed = 1,
    energy_source = {
        type = "void",
    },
    energy_usage = "1W",
    fixed_recipe = 'drilling-fluids',
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2,2.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1,2.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1,2.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2,2.0}, direction = defines.direction.south}}
        },
    },
    selectable_in_game = false,
    localised_name = {'entity-name.oil-derrick-mk01'},
    localised_description = {'entity-description.oil-derrick-mk01'}
}