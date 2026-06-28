RECIPE {
    type = "recipe",
    name = "pumpjack-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "steam-engine",        amount = 1},
        {type = "item", name = "iron-plate",          amount = 50},
        {type = "item", name = "burner-mining-drill", amount = 1},
        {type = "item", name = "electronic-circuit",  amount = 2},
        {type = "item", name = "small-parts-01",      amount = 20},
    },
    results = {
        {type = "item", name = "pumpjack-mk01", amount = 1}
    }
}:add_unlock("drilling-fluid-mk01")

RECIPE {
    type = "recipe",
    name = "pumpjack-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "pumpjack-mk01",    amount = 1},
        {type = "item", name = "steel-plate",      amount = 40},
        {type = "item", name = "advanced-circuit", amount = 5},
        {type = "item", name = "small-parts-02",   amount = 30},
        {type = "item", name = "engine-unit",      amount = 5},
    },
    results = {
        {type = "item", name = "pumpjack-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "pumpjack-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "pumpjack-mk02",        amount = 1},
        {type = "item", name = "pipe",                 amount = 40},
        {type = "item", name = "processing-unit",      amount = 10},
        {type = "item", name = "small-parts-03",       amount = 40},
        {type = "item", name = "electric-engine-unit", amount = 5},
    },
    results = {
        {type = "item", name = "pumpjack-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "pumpjack-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "pumpjack-mk03",         amount = 1},
        {type = "item", name = "nbfe-alloy",            amount = 30},
        {type = "item", name = "concrete",              amount = 35},
        {type = "item", name = "low-density-structure", amount = 30},
        {type = "item", name = "small-parts-03",        amount = 40},
    },
    results = {
        {type = "item", name = "pumpjack-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

local graphic_set_per_tier = {
    {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk01/small-pumpjack.png",
                    width = 1770 / 10,
                    height = 1070 / 5,
                    line_length = 10,
                    frame_count = 50,
                    shift = {-0.2, -0.3},
                    animation_speed = 0.4
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk01/small-pumpjack-sh.png",
                    width = 217,
                    height = 165,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 0.4,
                    draw_as_shadow = true,
                    shift = util.by_pixel(11, 15)
                }
            }
        }
    },
    {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk02/left.png",
                    width = 128,
                    height = 288,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-51, -32)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk02/right.png",
                    width = 128,
                    height = 288,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(77, -32)
                }
            }
        }
    },
    {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk03/a1.png",
                    width = 96,
                    height = 394,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-96, -50)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk03/a2.png",
                    width = 96,
                    height = 394,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, -50)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk03/a3.png",
                    width = 96,
                    height = 394,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(96, -50)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk03/a4.png",
                    width = 32,
                    height = 394,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(160, -50)
                }
            }
        }
    },
    {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a1.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-160, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a2.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-128, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a3.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-96, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a4.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-64, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a5.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-32, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a6.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a7.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(32, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a8.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(64, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a9.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(96, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a10.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(128, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a11.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(160, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a12.png",
                    width = 32,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(192, -23)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk04/a13.png",
                    width = 16,
                    height = 403,
                    line_length = 50,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(216, -23)
                }
            }
        }
    },
}

local collision_boxes_per_tier = {
    {{-2.9, -2.9}, {2.9, 2.9}},
    {{-3.4, -3.4}, {3.4, 3.4}},
    {{-4.4, -4.4}, {4.4, 4.4}},
    {{-5.4, -5.4}, {5.4, 5.4}},
}

local selection_boxes_per_tier = {
    {{-3.0, -3.0}, {3.0, 3.0}},
    {{-3.5, -3.5}, {3.5, 3.5}},
    {{-4.5, -4.5}, {4.5, 4.5}},
    {{-5.5, -5.5}, {5.5, 5.5}},
}

local output_pipe_pos_per_tier = {
    {-0.5, 2.5},
    {-1.0, 3.0},
    {-3.0, 4.0},
    {-3.0, 5.0},
}

local input_pipe_pos_per_tier = {
    {0.5, -2.5},
    {1.0, -3.0},
    {3.0, -4.0},
    {3.0, -5.0},
}

local sound_indexes = {1, 1, 2, 2}

local usage_table = {250,450,650,750}

for i = 1, 4 do
    local name = "pumpjack-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk0" .. i .. ".png"
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
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = collision_boxes_per_tier[i],
        selection_box = selection_boxes_per_tier[i],
        module_slots = i,
        allowed_effects = {"speed", "consumption"},
        crafting_categories = {"pumpjack"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution = 2 or i == 4 and 3}
        },
        energy_usage = usage_table[i] .. "kW",
        graphics_set = graphic_set_per_tier[i],
        fluid_boxes_off_when_no_fluid_recipe = false,
        fluid_boxes = { -- 1
            {
                production_type = "output",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = output_pipe_pos_per_tier[i], direction = defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = input_pipe_pos_per_tier[i], direction = defines.direction.north}}
            }
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk0" .. sound_indexes[i] .. ".ogg", volume = 0.8}, --lazy implementation via indexes, idk how to "if" this parameter properly
            idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk0" .. sound_indexes[i] .. ".ogg",volume = 0.3}
        }
    }
end
