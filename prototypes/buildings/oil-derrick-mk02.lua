
RECIPE {
    type = "recipe",
    name = "oil-derrick-mk02",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"evaporator", 1},
        {"distilator", 1},
        {"bitumen-seep-mk01", 1},
        {"engine-unit", 5},
        {"steel-plate", 50},
        {"advanced-circuit", 12},
        {"small-parts-02", 30},
        {"pipe", 30},
    },
    results = {
        {"bitumen-seep-mk02", 1}
    }
}:add_unlock("oil-machines-mk02"):replace_ingredient("distilator", "distilator-mk02")

ITEM {
    type = "item",
    name = "bitumen-seep-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "a",
    place_result = "bitumen-seep-mk02",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "oil-derrick-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bitumen-seep-mk02"},
    fast_replaceable_group = "oil-derrick",
    max_health = 700,
    resource_categories = {"oil-mk02", "oil-mk01"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity"},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 20,
    },
    output_fluid_box =
    {
        base_area = 20,
        base_level = 1,
        --height = 10,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_connections =
      {
        {
          positions = { {0, -4.0}, {4.0, 0}, {0, 4.0}, {-4.0, 0} }
        }
      }
    },
    energy_usage = "300kW",
    mining_speed = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["oil-derrick-mk02"].points,
    circuit_connector_sprites = circuit_connector_definitions["oil-derrick-mk02"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    monitor_visualization_tint = {r=78, g=173, b=255},
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk02/base.png",
                width = 224,
                height = 427,
                line_length = 9,
                frame_count = 25,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -103)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-derrick-mk02/shadow.png",
                width = 313,
                height = 192,
                line_length = 5,
                frame_count = 25,
                animation_speed = 0.3,
                draw_as_shadow = true,
                shift = util.by_pixel(48, 0)
            },
    },
},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick.ogg", volume = 1.0},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
}

local seep = table.deepcopy(data.raw['mining-drill']['oil-derrick-mk02'])
seep.name = 'bitumen-seep-mk02'
seep.resource_categories = {'bitumen-seep', 'oil-mk02', 'oil-mk01'}
data:extend{seep}

ENTITY {
    type = "assembling-machine",
    name = "bitumen-seep-mk02-base",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/coalbed-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    --minable = {mining_time = 0.5, result = "coalbed-mk01"},
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{0,0}, {0,0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {},
    crafting_categories = {"drilling-fluid"},
    crafting_speed = 1,
    energy_source = {
        type = "void",
    },
    energy_usage = "1W",
    fixed_recipe = 'drilling-fluids',
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2,4}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1,4}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = -1,
            pipe_connections = {{type = "input", position = {1,4}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = -1,
            pipe_connections = {{type = "input", position = {2,4}}}
        },
        off_when_no_fluid_recipe = false
    },
    selectable_in_game = false,
    localised_name = {'entity-name.oil-derrick-mk02'},
    localised_description = {'entity-description.oil-derrick-mk02'}
}