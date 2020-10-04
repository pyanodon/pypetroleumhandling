RECIPE {
    type = "recipe",
    name = "py-tank-9000",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"py-tank-5000", 1},
        {"py-tank-3000", 1},
        {"iron-plate", 15},
        {"steel-plate", 30},
    },
    results = {
        {"py-tank-9000", 1}
    }
}:add_unlock("py-storage-tanks")

ITEM {
    type = "item",
    name = "py-tank-9000",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/py-tank-9000.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-storage-tanks",
    order = "a-d[py-items]",
    place_result = "py-tank-9000",
    stack_size = 10
}

ENTITY {
    type = "storage-tank",
    name = "py-tank-9000",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/py-tank-9000.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 3, result = "py-tank-9000"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    two_direction_only = true,
    fluid_box = {
        base_area = 900,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {position = {1.0, -4.0}},
            {position = {-1.0, -4.0}},
            {position = {4.0, 1.0}},
            {position = {4.0, -1.0}},
            {position = {1.0, 4.0}},
            {position = {-1.0, 4.0}},
            {position = {-4.0, 1.0}},
            {position = {-4.0, -1.0}}
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            sheet = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-tank-9000/py-tank-9000.png",
                priority = "extra-high",
                frames = 1,
                width = 252,
                height = 293,
                shift = util.by_pixel(14, -33)
            }
        },
        fluid_background = ENTITY.Sprites.empty_sprite(),
        window_background = ENTITY.Sprites.empty_sprite(),
        flow_sprite = ENTITY.Sprites.empty_sprite(),
        gas_flow = ENTITY.Sprites.empty_animation()
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {
            filename = "__base__/sound/storage-tank.ogg",
            volume = 0.8
        },
        apparent_volume = 1.5,
        max_sounds_per_type = 3
    },
    circuit_wire_max_distance = 9,
    circuit_wire_connection_points = _G.circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = _G.circuit_connector_definitions["storage-tank"].sprites
}
