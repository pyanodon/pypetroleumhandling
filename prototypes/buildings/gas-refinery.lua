RECIPE {
    type = "recipe",
    name = "gas-refinery-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "washer",              amount = 1},
        {type = "item", name = "steel-plate",         amount = 30},
        {type = "item", name = "pipe",                amount = 30},
        {type = "item", name = "steam-engine",        amount = 5},
        {type = "item", name = "tar-processing-unit", amount = 1},
        {type = "item", name = "electronic-circuit",  amount = 10},
        {type = "item", name = "small-parts-01",      amount = 10},
    },
    results = {
        {type = "item", name = "gas-refinery-mk01", amount = 1}
    }
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "gas-refinery-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "gas-refinery-mk01", amount = 1},
        {type = "item", name = "steel-plate",       amount = 30},
        {type = "item", name = "advanced-circuit",  amount = 20},
        {type = "item", name = "engine-unit",       amount = 8},
        {type = "item", name = "small-parts-02",    amount = 30},
    },
    results = {
        {type = "item", name = "gas-refinery-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "gas-refinery-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "gas-refinery-mk02",    amount = 1},
        {type = "item", name = "steel-plate",          amount = 100},
        {type = "item", name = "plastic-bar",          amount = 100},
        {type = "item", name = "processing-unit",      amount = 15},
        {type = "item", name = "electric-engine-unit", amount = 8},
        {type = "item", name = "small-parts-03",       amount = 30},
    },
    results = {
        {type = "item", name = "gas-refinery-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "gas-refinery-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "gas-refinery-mk03",     amount = 1},
        {type = "item", name = "low-density-structure", amount = 20},
        {type = "item", name = "nbfe-alloy",            amount = 20},
        {type = "item", name = "small-parts-03",        amount = 30},
    },
    results = {
        {type = "item", name = "gas-refinery-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

local usage_table = {500, 700, 1000, 1200}

for i = 1, 4 do
    local name = "gas-refinery-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/gas-refinery-mk0" .. i .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-petroleum-handling-buildings-mk0" .. i,
        order = "b",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "gas-refinery",
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
        selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
        use_mirroring = true,
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"gas-refinery"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution = 50}
        },
        energy_usage = usage_table[i] .. "kW",
        graphics_set = {
            working_visualisations = {
                {
                    north_position = util.by_pixel(48, -96),
                    west_position = util.by_pixel(48, -96),
                    south_position = util.by_pixel(48, -96),
                    east_position = util.by_pixel(48, -96),
                    animation = {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-refinery-mk01/anim.png", -- priority = "low",
                        frame_count = 54,
                        line_length = 10,
                        width = 192,
                        height = 288,
                        animation_speed = 0.5
                    }
                }
            },
            animation = {
                layers = {
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-refinery-mk0" .. i .. "/off.png",
                        width = 304,
                        height = 387,
                        frame_count = 1,
                        shift = util.by_pixel(7, -48)
                    }
                }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = false,
        fluid_boxes = { -- 1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {0.0, -4.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {3.0, -4.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {-3.0, -4.0}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {0.0, 4.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-3.0, 4.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {3.0, 4.0}, direction = defines.direction.south}}
            }
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pypetroleumhandlinggraphics__/sounds/gas-refinery.ogg", volume = 1.5},
            idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/gas-refinery.ogg", volume = 0.3}
        }
    }
end
