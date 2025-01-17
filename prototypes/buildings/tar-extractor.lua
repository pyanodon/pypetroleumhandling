local function pipe_picture()
    return {
        north = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-to-ground-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {0, 1},
        },
        south = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-to-ground-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {0, -1},
        },
        west = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-to-ground-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            shift = {1, 0},
        },
        east = {
            filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-to-ground-right.png",
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
    name = "tar-extractor-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "distilator",             amount = 1},
        {type = "item", name = "automated-factory-mk01", amount = 1},
        {type = "item", name = "steel-plate",            amount = 50},
        {type = "item", name = "electronic-circuit",     amount = 5},
        {type = "item", name = "small-parts-01",         amount = 20},
        {type = "item", name = "pipe",                   amount = 20},
    },
    results = {
        {type = "item", name = "tar-extractor-mk01", amount = 1}
    }
}:add_unlock("drilling-fluid-mk01")

RECIPE {
    type = "recipe",
    name = "tar-extractor-mk02",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "tar-extractor-mk01", amount = 1},
        {type = "item", name = "advanced-circuit",   amount = 5},
        {type = "item", name = "small-parts-02",     amount = 15},
        {type = "item", name = "engine-unit",        amount = 10},
        {type = "item", name = "niobium-plate",      amount = 10},
    },
    results = {
        {type = "item", name = "tar-extractor-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "tar-extractor-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "tar-extractor-mk02",   amount = 1},
        {type = "item", name = "small-parts-03",       amount = 20},
        {type = "item", name = "plastic-bar",          amount = 100},
        {type = "item", name = "processing-unit",      amount = 15},
        {type = "item", name = "electric-engine-unit", amount = 10},
        {type = "item", name = "concrete",             amount = 50},
    },
    results = {
        {type = "item", name = "tar-extractor-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "tar-extractor-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "tar-extractor-mk03",    amount = 1},
        {type = "item", name = "nbfe-alloy",            amount = 30},
        {type = "item", name = "concrete",              amount = 35},
        {type = "item", name = "low-density-structure", amount = 30},
        {type = "item", name = "small-parts-03",        amount = 40},
    },
    results = {
        {type = "item", name = "tar-extractor-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

for i = 1, 4 do
    local name = "tar-extractor-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/tar-extractor-mk0" .. i .. ".png"
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
        fast_replaceable_group = "tar-extractor",
        max_health = 700 * i,
        resource_categories = {"tar-patch", "bitumen-seep"},
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
        selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
        module_slots = i,
        allowed_effects = {"consumption", "speed", "productivity"},
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 20 * i
            },
        },
        output_fluid_box = {
            volume = 1000,
            pipe_connections = {
                {flow_direction = "output", position = {-2, -4.0}, direction = defines.direction.north},
                {flow_direction = "output", position = {4.0, -2},  direction = defines.direction.east},
                {flow_direction = "output", position = {2, 4.0},   direction = defines.direction.south},
                {flow_direction = "output", position = {-4.0, 2},  direction = defines.direction.west},
            },
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
        circuit_connector = circuit_connector_definitions["tar-extractor-mkxx"],
        circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
        monitor_visualization_tint = {r = 78, g = 173, b = 255},
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-a.png",
                        width = 128,
                        height = 329,
                        line_length = 16,
                        frame_count = 96,
                        animation_speed = 0.2,
                        shift = util.by_pixel(-80, -20)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-a-mask.png",
                        width = 128,
                        height = 329,
                        line_length = 16,
                        frame_count = 96,
                        animation_speed = 0.2,
                        shift = util.by_pixel(-80, -20),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-b.png",
                        width = 128,
                        height = 329,
                        line_length = 16,
                        frame_count = 96,
                        animation_speed = 0.2,
                        shift = util.by_pixel(48, -20)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-b-mask.png",
                        width = 128,
                        height = 329,
                        line_length = 16,
                        frame_count = 96,
                        animation_speed = 0.2,
                        shift = util.by_pixel(48, -20),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-c.png",
                        width = 41,
                        height = 329,
                        line_length = 16,
                        frame_count = 96,
                        animation_speed = 0.2,
                        shift = util.by_pixel(132, -20)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-c-mask.png",
                        width = 41,
                        height = 329,
                        line_length = 16,
                        frame_count = 96,
                        animation_speed = 0.2,
                        shift = util.by_pixel(132, -20),
                        tint = py.tints[i]
                    },
                },
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tar-extractor.ogg", volume = 1.0},
            idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tar-extractor.ogg", volume = 0.3},
            apparent_volume = 2.5
        },
    }

    ENTITY {
        type = "assembling-machine",
        name = name .. "-base",
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral"},
        minable = nil,
        max_health = 10000,
        corpse = "medium-remnants",
        hidden = true,
        collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
        selection_box = {{0, 0}, {0, 0}},
        forced_symmetry = "diagonal-pos",
        module_slots = 0,
        allowed_effects = {},
        crafting_categories = {"drilling-fluid"},
        crafting_speed = i,
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
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {3, -4}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {4, 3}, direction = defines.direction.east}}
            },
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-3, 4}, direction = defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_picture = pipe_picture(),
                pipe_covers = pipe_cover(),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-4, -3}, direction = defines.direction.west}}
            },
        },
        selectable_in_game = false,
        localised_name = {"entity-name." .. name},
        localised_description = {"entity-description." .. name}
    }
end

local oil_explosion = {
    animations = {
        {
            animation_speed = 0.5,
            draw_as_glow = true,
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-explosion/oil-explosion-1.png",
            frame_count = 36,
            height = 416,
            shift = {
                0,
                -1.5
            },
            stripes = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-explosion/oil-explosion-1.png",
                    height_in_frames = 3,
                    width_in_frames = 6
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-explosion/oil-explosion-2.png",
                    height_in_frames = 3,
                    width_in_frames = 6
                }
            },
            width = 324
        }
    },
    created_effect = {
        action_delivery = {
            target_effects = {
                {
                    initial_height = 0.5,
                    initial_vertical_speed = 0.08,
                    initial_vertical_speed_deviation = 0.15,
                    offset_deviation = {
                        {
                            -0.8984,
                            -0.5
                        },
                        {
                            0.8984,
                            0.5
                        }
                    },
                    particle_name = "explosion-stone-particle-medium",
                    repeat_count = 20,
                    speed_from_center = 0.1,
                    speed_from_center_deviation = 0.15,
                    type = "create-particle"
                },
                {
                    initial_height = 1,
                    initial_height_deviation = 0.5,
                    initial_vertical_speed = 0.1,
                    initial_vertical_speed_deviation = 0.05,
                    offset_deviation = {
                        {
                            -0.8984,
                            -0.5
                        },
                        {
                            0.8984,
                            0.5
                        }
                    },
                    particle_name = "explosion-stone-particle-small",
                    repeat_count = 25,
                    speed_from_center = 0.05,
                    speed_from_center_deviation = 0.05,
                    type = "create-particle"
                },
                {
                    initial_height = 1,
                    initial_height_deviation = 0.5,
                    initial_vertical_speed = 0.1,
                    initial_vertical_speed_deviation = 0.05,
                    offset_deviation = {
                        {
                            -0.8984,
                            -0.5
                        },
                        {
                            0.8984,
                            0.5
                        }
                    },
                    particle_name = "explosion-stone-particle-tiny",
                    repeat_count = 50,
                    speed_from_center = 0.05,
                    speed_from_center_deviation = 0.05,
                    type = "create-particle"
                }
            },
            type = "instant"
        },
        type = "direct"
    },
    flags = {
        "not-on-map",
    },
    hidden = true,
    icon = "__base__/graphics/item-group/effects.png",
    icon_size = 64,
    name = "oil-explosion",
    icons = {
        {icon = "__base__/graphics/icons/explosion.png", tint = {0, 0, 0}},
    },
    flags = {"not-on-map"},
    hidden = true,
    sound = {
        aggregation = {
            max_count = 1,
            remove = true
        },
        audible_distance_modifier = 95000,
        game_controller_vibration_data = {
            duration = 160,
            low_frequency_vibration_intensity = 0.9,
            play_for = "everything"
        },
        switch_vibration_data = {
            filename = "__base__/sound/fight/large-explosion.bnvib",
            gain = 0.6,
            play_for = "everything"
        },
        variations = {
            {
                filename = "__base__/sound/fight/large-explosion-1.ogg",
                volume = 0.8
            },
            {
                filename = "__base__/sound/fight/large-explosion-2.ogg",
                volume = 0.8
            }
        }
    },
    subgroup = "explosions",
    type = "explosion"
}

data:extend{oil_explosion}