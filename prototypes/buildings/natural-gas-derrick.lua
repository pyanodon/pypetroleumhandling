local function pipe_picture()
    if not mods["pyhightechgraphics"] then
        return py.pipe_pictures("assembling-machine-2", {0.17, 2.85}, {0.18, -2.9}, {3.1, -0.15}, {-2.9, -0.2}, pipes)
    end

    return {
        north = {
            filename = "__pyhightechgraphics__/graphics/entity/ht-pipes/pipe-to-ground-up.png",
            priority = "high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {0, 1},
        },
        south = {
            filename = "__pyhightechgraphics__/graphics/entity/ht-pipes/pipe-to-ground-down.png",
            priority = "high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {0, -1},
        },
        west = {
            filename = "__pyhightechgraphics__/graphics/entity/ht-pipes/pipe-to-ground-left.png",
            priority = "high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {1, 0},
        },
        east = {
            filename = "__pyhightechgraphics__/graphics/entity/ht-pipes/pipe-to-ground-right.png",
            priority = "high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {-1, 0},
        }
    }
end

local function pipe_cover()
    if not mods["pyhightech"] then
        return py.pipe_covers(true, true, true, true)
    end

    return table.deepcopy(data.raw["pipe-to-ground"]["ht-pipes-to-ground"].fluid_box.pipe_covers)
end

RECIPE {
    type = "recipe",
    name = "natural-gas-derrick-mk01",
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
        {type = "item", name = "natural-gas-derrick-mk01", amount = 1}
    }
}:add_unlock("drilling-fluid-mk01")

RECIPE {
    type = "recipe",
    name = "natural-gas-derrick-mk02",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "evaporator",            amount = 1},
        {type = "item", name = "distilator",            amount = 1},
        {type = "item", name = "natural-gas-derrick-mk01", amount = 1},
        {type = "item", name = "steel-plate",           amount = 50},
        {type = "item", name = "advanced-circuit",      amount = 12},
        {type = "item", name = "engine-unit",           amount = 5},
        {type = "item", name = "small-parts-02",        amount = 30},
        {type = "item", name = "pipe",                  amount = 30},
    },
    results = {
        {type = "item", name = "natural-gas-derrick-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "natural-gas-derrick-mk03",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item",                                        name = "natural-gas-derrick-mk02", amount = 1},
        {mods.pyrawores and "distilator-mk03" or "distilator", 1},
        {type = "item",                                        name = "automated-factory-mk01", amount = 1},
        {type = "item",                                        name = "steel-plate",            amount = 100},
        {type = "item",                                        name = "processing-unit",        amount = 15},
        {type = "item",                                        name = "electric-engine-unit",   amount = 5},
        {type = "item",                                        name = "small-parts-03",         amount = 25},
        {type = "item",                                        name = "pipe",                   amount = 20},
    },
    results = {
        {type = "item", name = "natural-gas-derrick-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "natural-gas-derrick-mk04",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {type = "item", name = "natural-gas-derrick-mk03", amount = 1},
        {type = "item", name = "distilator",            amount = 1},
        {type = "item", name = "nbfe-alloy",            amount = 50},
        {type = "item", name = "low-density-structure", amount = 30},
        {type = "item", name = "pipe",                  amount = 20}
    },
    results = {
        {type = "item", name = "natural-gas-derrick-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

for i = 1, 4 do
    local name = "natural-gas-derrick-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/gas-extractor-mk0" .. i .. ".png"
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
        resource_categories = {"bitumen-seep", "natural-gas"},
        max_health = 200,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        energy_source =
        {
            type = "electric",
            emissions_per_minute = {
                pollution = 20 * i
            },
            usage_priority = "secondary-input"
        },
        output_fluid_box = {
            volume = 1000,
            pipe_connections = {
                {flow_direction = "output", position = {0, -3.0}, direction = defines.direction.north},
                {flow_direction = "output", position = {3.0, 0},  direction = defines.direction.east},
                {flow_direction = "output", position = {0, 3.0},  direction = defines.direction.south},
                {flow_direction = "output", position = {-3.0, 0}, direction = defines.direction.west},
            },
            pipe_covers = table.deepcopy(data.raw["pipe-to-ground"]["ht-pipes-to-ground"].fluid_box.pipe_covers),
        },
        energy_usage = (3 * i) .. "MW",
        mining_speed = i,
        resource_searching_radius = 0.49,
        vector_to_place_result = {0, 0},
        module_slots = i,
        allowed_effects = {"consumption", "speed", "productivity"},
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
            width = 12,
            height = 12
        },
        circuit_connector = circuit_connector_definitions["natural-gas-derrick-mkxx"],
        circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
        monitor_visualization_tint = {r = 78, g = 173, b = 255},
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/raw.png",
                        width = 224,
                        height = 320,
                        line_length = 7,
                        frame_count = 30,
                        animation_speed = 1 / 5,
                        shift = util.by_pixel(0, -48)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/mask.png",
                        width = 224,
                        height = 320,
                        line_length = 7,
                        frame_count = 30,
                        animation_speed = 1 / 5,
                        tint = py.tints[i],
                        shift = util.by_pixel(0, -48)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/ao.png",
                        width = 288,
                        height = 352,
                        line_length = 7,
                        frame_count = 30,
                        animation_speed = 1 / 5,
                        shift = util.by_pixel(0, -32)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/l.png",
                        width = 224,
                        height = 320,
                        line_length = 7,
                        frame_count = 30,
                        animation_speed = 1 / 5,
                        draw_as_glow = true,
                        shift = util.by_pixel(0, -48)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/sh.png",
                        width = 288,
                        height = 352,
                        line_length = 1,
                        frame_count = 1,
                        repeat_count = 30,
                        animation_speed = 1 / 5,
                        draw_as_shadow = true,
                        shift = util.by_pixel(0, -32)
                    },
                },
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pypetroleumhandlinggraphics__/sounds/gas-extractor.ogg", volume = 0.3},
            apparent_volume = 0.5
        },
        fast_replaceable_group = "natural-gas-derrick",
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
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{0, 0}, {0, 0}},
        module_slots = 0,
        allowed_effects = {},
        crafting_categories = {"drilling-fluid"},
        crafting_speed = 1,
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
                pipe_connections = {{flow_direction = "input", position = {-2, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                render_layer = "lower-object",
                pipe_connections = {{flow_direction = "input", position = {-2, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                render_layer = "lower-object",
                pipe_connections = {{flow_direction = "input", position = {2, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                render_layer = "lower-object",
                pipe_connections = {{flow_direction = "input", position = {2, 3.0}, direction = defines.direction.south}}
            },
        },
        selectable_in_game = false,
        localised_name = {"entity-name." .. name},
        localised_description = {"entity-description." .. name}
    }
end