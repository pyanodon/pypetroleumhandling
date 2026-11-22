local function pipe_picture()
    return {
        north = {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-to-ground-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {0, 1},
        },
        south = {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-to-ground-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {0, -1},
        },
        west = {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-to-ground-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {1, 0},
        },
        east = {
            filename = "__pyindustrygraphics__/graphics/entity/niobium-pipe/pipe-to-ground-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {-1, 0},
        }
    }
end

local function pipe_cover()
    return table.deepcopy(data.raw["pipe-to-ground"]["niobium-pipe-to-ground"].fluid_box.pipe_covers)
end

RECIPE {
    type = "recipe",
    name = "oil-derrick-mk01",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "steam-engine",       amount = 1},
        {type = "item", name = "iron-plate",         amount = 30},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "small-parts-01",     amount = 10},
        {type = "item", name = "pipe",               amount = 10},
    },
    results = {
        {type = "item", name = "oil-derrick-mk01", amount = 1}
    }
}:add_unlock("drilling-fluid-mk01")

RECIPE {
    type = "recipe",
    name = "oil-derrick-mk02",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "evaporator",                                         amount = 1},
        {type = "item", name = mods.pyrawores and "distilator-mk02" or "distilator", amount = 1},
        {type = "item", name = "oil-derrick-mk01",                                   amount = 1},
        {type = "item", name = "engine-unit",                                        amount = 5},
        {type = "item", name = "steel-plate",                                        amount = 50},
        {type = "item", name = "advanced-circuit",                                   amount = 12},
        {type = "item", name = "small-parts-02",                                     amount = 30},
        {type = "item", name = "pipe",                                               amount = 30},
    },
    results = {
        {type = "item", name = "oil-derrick-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "oil-derrick-mk03",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "oil-derrick-mk02",                                   amount = 1},
        {type = "item", name = mods.pyrawores and "distilator-mk03" or "distilator", amount = 1},
        {type = "item", name = "steel-plate",                                        amount = 100},
        {type = "item", name = "electric-engine-unit",                               amount = 10},
        {type = "item", name = "processing-unit",                                    amount = 15},
        {type = "item", name = "small-parts-03",                                     amount = 25},
        {type = "item", name = "pipe",                                               amount = 20},
    },
    results = {
        {type = "item", name = "oil-derrick-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "oil-derrick-mk04",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "oil-derrick-mk03",      amount = 1},
        {type = "item", name = "distilator",            amount = 1},
        {type = "item", name = "nbfe-alloy",            amount = 50},
        {type = "item", name = "low-density-structure", amount = 30},
        {type = "item", name = "pipe",                  amount = 20}
    },
    results = {{type = "item", name = "oil-derrick-mk04", amount = 1}}
}:add_unlock("oil-machines-mk04")

local collision_boxes_per_tier = {
    {{-2.4, -2.4}, {2.4, 2.4}},
    {{-3.4, -3.4}, {3.4, 3.4}},
    {{-4.4, -4.4}, {4.4, 4.4}},
    {{-5.4, -5.4}, {5.4, 5.4}},
}

local selection_boxes_per_tier = {
    {{-2.5, -2.5}, {2.5, 2.5}},
    {{-3.5, -3.5}, {3.5, 3.5}},
    {{-4.5, -4.5}, {4.5, 4.5}},
    {{-5.5, -5.5}, {5.5, 5.5}},
}

local graphic_sets_per_tier = {
    {
        animation = {
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
    },
    {
        animation = {
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
    },
    {
        animation = {
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
    },
    {
        animation = {
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
            },
        },
    },
}

local pipe_connections_per_tier = {
    {
        {flow_direction = "output", position = {0, -2.0}, direction = defines.direction.north},
        {flow_direction = "output", position = {2.0, 0},  direction = defines.direction.east},
        {flow_direction = "output", position = {0, 2.0},  direction = defines.direction.south},
        {flow_direction = "output", position = {-2.0, 0}, direction = defines.direction.west},
    },
    {
        {flow_direction = "output", position = {0, -3.0}, direction = defines.direction.north},
        {flow_direction = "output", position = {3.0, 0},  direction = defines.direction.east},
        {flow_direction = "output", position = {0, 3.0},  direction = defines.direction.south},
        {flow_direction = "output", position = {-3.0, 0}, direction = defines.direction.west},
    },
    {
        {flow_direction = "output", position = {0, -4.0}, direction = defines.direction.north},
        {flow_direction = "output", position = {4.0, 0},  direction = defines.direction.east},
        {flow_direction = "output", position = {0, 4.0},  direction = defines.direction.south},
        {flow_direction = "output", position = {-4.0, 0}, direction = defines.direction.west},
    },
    {
        {flow_direction = "output", position = {0, -5.0}, direction = defines.direction.north},
        {flow_direction = "output", position = {5.0, 0},  direction = defines.direction.east},
        {flow_direction = "output", position = {0, 5.0},  direction = defines.direction.south},
        {flow_direction = "output", position = {-5.0, 0}, direction = defines.direction.west},
    },
}

for i = 1, 4 do
    local name = "oil-derrick-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-derrick-mk0" .. i .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-petroleum-handling-buildings-mk0" .. i,
        order = "a",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "mining-drill",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        placeable_by = {item = name, count = 1},
        fast_replaceable_group = "oil-derrick",
        max_health = 700 * i,
        resource_categories = {"bitumen-seep", "oil-derrick"},
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = collision_boxes_per_tier[i],
        selection_box = selection_boxes_per_tier[i],
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"consumption", "speed", "productivity"},
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 20 * i
            },
        },
        base_picture = (i == 4) and {
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
        } or nil,
        output_fluid_box = {
            volume = i * 1000,
            pipe_covers = pipe_cover(),
            pipe_connections = pipe_connections_per_tier[i],
        },
        energy_usage = (3 * i) .. "MW",
        mining_speed = i,
        resource_searching_radius = 0.49,
        vector_to_place_result = {0, 0},
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 12,
            height = 12
        },
        circuit_connector = circuit_connector_definitions["oil-derrick-mk01"],
        circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
        monitor_visualization_tint = {r = 78, g = 173, b = 255},
        graphics_set = graphic_sets_per_tier[i],
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick.ogg", volume = 1.0},
            idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/oil-derrick.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
    }

    ENTITY {
        type = "assembling-machine",
        name = name .. "-base",
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral"},
        max_health = 10000,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = collision_boxes_per_tier[i],
        selection_box = {{0, 0}, {0, 0}},
        forced_symmetry = "diagonal-pos",
        module_slots = 0,
        allowed_effects = {},
        crafting_categories = {"drilling-fluid"},
        crafting_speed = i,
        energy_source = {
            type = "void",
        },
        hidden = true,
        energy_usage = "1W",
        fixed_recipe = "drilling-fluids",
        fluid_boxes_off_when_no_fluid_recipe = false,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                render_layer = "lower-object",
                pipe_connections = {{flow_direction = "input", position = {1 + i, 1 + i}, direction = defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                render_layer = "lower-object",
                pipe_connections = {{flow_direction = "input", position = {1 + i, -(1 + i)}, direction = defines.direction.east}}
            },
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                render_layer = "lower-object",
                pipe_connections = {{flow_direction = "input", position = {-(1 + i), -(1 + i)}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                render_layer = "lower-object",
                pipe_connections = {{flow_direction = "input", position = {-(1 + i), 1 + i}, direction = defines.direction.west}}
            },
        },
        selectable_in_game = false,
        localised_name = {"entity-name." .. name},
        localised_description = {"entity-description." .. name}
    }
end
