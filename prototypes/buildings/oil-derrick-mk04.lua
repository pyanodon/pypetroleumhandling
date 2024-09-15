RECIPE{
    type = 'recipe',
    name = 'oil-derrick-mk04',
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = 'bitumen-seep-mk03', amount = 1},
        {type = "item", name = 'distilator', amount = 1},
        {type = "item", name = 'nbfe-alloy', amount = 50},
        {type = "item", name = 'low-density-structure', amount = 30},
        {type = "item", name = 'pipe', amount = 20}
    },
    results = {{type = "item", name = 'bitumen-seep-mk04', amount = 1}}
}:add_unlock('oil-machines-mk04')

ITEM{
    type = 'item',
    name = 'bitumen-seep-mk04',
    icon = '__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk04.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-petroleum-handling-buildings-mk04',
    order = 'a',
    place_result = 'bitumen-seep-mk04',
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-derrick-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bitumen-seep-mk04"},
    placeable_by = {item = "bitumen-seep-mk04", count = 1},
    fast_replaceable_group = "oil-derrick",
    max_health = 700,
    resource_categories = {"oil-mk04", "oil-mk03", "oil-mk02", "oil-mk01"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_specification = {
        module_slots = 4
    },
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
        volume = 4000,
      pipe_covers = py.pipe_covers(false, true, true, true),
      pipe_connections =
      {
        {
          positions = { {0, -6}, {6, 0}, {0, 6}, {-6, 0} }
        }
      }
    },
    energy_usage = "1000kW",
    mining_speed = 4,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -5.9},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["oil-derrick-mk04"].points,
    circuit_connector_sprites = circuit_connector_definitions["oil-derrick-mk04"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_render_layer = "lower-object-above-shadow",
    base_picture =
    {
      sheets =
      {
        {
          filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk04/off.png",
          priority = "extra-high",
          width = 384,
          height = 437,
          frame_count = 1,
          shift = util.by_pixel(16, -43),
        },
    },
},
    animations = {
        north = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk04/fluid.png",
                width = 224,
                height = 192,
                line_length = 9,
                frame_count = 80,
                animation_speed = 0.15,
                shift = util.by_pixel(-29, 29)
            },
        }
    },
},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick-2.ogg", volume = 1.9},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick-2.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
}

local seep = table.deepcopy(data.raw['mining-drill']['oil-derrick-mk04'])
seep.name = 'bitumen-seep-mk04'
seep.resource_categories = {'bitumen-seep', 'oil-mk04', 'oil-mk03', 'oil-mk02', 'oil-mk01'}
data:extend{seep}

ENTITY{
    type = 'assembling-machine',
    name = 'bitumen-seep-mk04-base',
    icon = '__pypetroleumhandlinggraphics__/graphics/icons/coalbed-mk01.png',
    icon_size = 32,
    flags = {'placeable-neutral'},
    -- minable = {mining_time = 0.5, result = "coalbed-mk01"},
    max_health = 100,
    corpse = 'medium-remnants',
    dying_explosion = 'big-explosion',
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{0, 0}, {0, 0}},
    match_animation_speed_to_activity = false,
    module_specification = {module_slots = 0},
    allowed_effects = {},
    crafting_categories = {'drilling-fluid'},
    crafting_speed = 1,
    energy_source = {type = 'void'},
    energy_usage = '1W',
    fixed_recipe = 'drilling-fluids',
    fluid_boxes = {
        -- 1
        {
            production_type = 'input',
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil
            ),
            pipe_covers = py.pipe_covers(false, true, true, true
            ),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = 'input', position = {-2, 6}, direction = defines.direction.south}}
        },
        {
            production_type = 'input',
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil
            ),
            pipe_covers = py.pipe_covers(false, true, true, true
            ),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = 'input', position = {-1, 6}, direction = defines.direction.south}}
        },
        {
            production_type = 'input',
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil
            ),
            pipe_covers = py.pipe_covers(false, true, true, true
            ),
            base_level = -1,
            pipe_connections = {{flow_direction = 'input', position = {1, 6}, direction = defines.direction.south}}
        },
        {
            production_type = 'input',
            pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil
            ),
            pipe_covers = py.pipe_covers(false, true, true, true
            ),
            base_level = -1,
            pipe_connections = {{flow_direction = 'input', position = {2, 6}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = false
    },
    selectable_in_game = false,
    localised_name = {'entity-name.oil-derrick-mk04'},
    localised_description = {'entity-description.oil-derrick-mk04'}
}
