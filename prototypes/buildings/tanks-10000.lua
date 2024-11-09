RECIPE {
    type = "recipe",
    name = "py-tank-10000",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "py-tank-4000", amount = 2},
        {type = "item", name = "iron-plate",   amount = 20},
        {type = "item", name = "steel-plate",  amount = 45},
    },
    results = {
        {type = "item", name = "py-tank-10000", amount = 1}
    }
}:add_unlock("py-storage-tanks")

ITEM {
    type = "item",
    name = "py-tank-10000",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/py-tank-10000.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-storage-tanks",
    order = "a-e[py-items]",
    place_result = "py-tank-10000",
    stack_size = 10
}

ENTITY {
    type = "storage-tank",
    name = "py-tank-10000",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/py-tank-10000.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 3, result = "py-tank-10000"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-3.9, -3.9}, {3.9, 3.9}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    two_direction_only = true,
    fluid_box = {
        volume = 100000,
        pipe_covers = _G.pipecoverspictures(),
        pipe_connections = {
            {position = {1.5, -3.5},  direction = defines.direction.north},
            {position = {-1.5, -3.5}, direction = defines.direction.north},
            {position = {3.5, 1.5},   direction = defines.direction.east},
            {position = {3.5, -1.5},  direction = defines.direction.east},
            {position = {1.5, 3.5},   direction = defines.direction.south},
            {position = {-1.5, 3.5},  direction = defines.direction.south},
            {position = {-3.5, 1.5},  direction = defines.direction.west},
            {position = {-3.5, -1.5}, direction = defines.direction.west}
        }
    },
    window_bounding_box = {{-0.0, 0.0}, {0.0, 0.0}},
    pictures = {
        picture = {
            sheet = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-tank-10000/py-tank-10000.png",
                priority = "extra-high",
                frames = 1,
                width = 272,
                height = 295,
                shift = util.by_pixel(8, -19)
            }
        },
        fluid_background = py.empty_image(),
        window_background = py.empty_image(),
        flow_sprite = py.empty_image(),
        gas_flow = py.empty_image()
    },
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
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
