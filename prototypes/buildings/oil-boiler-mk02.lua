RECIPE {
    type = "recipe",
    name = "oil-boiler-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "oil-boiler-mk01",         amount = 1},
        {type = "item", name = "pipe",                    amount = 15},
        {type = "item", name = "mechanical-parts-02",     amount = 1},
        {type = "item", name = "self-assembly-monolayer", amount = 5},
        {type = "item", name = "engine-unit",             amount = 10},
        {type = "item", name = "advanced-circuit",        amount = 5},
        {type = "item", name = "small-parts-02",          amount = 20},
        {type = "item", name = "steel-plate",             amount = 40},
        {type = "item", name = "titanium-plate",          amount = 50},
        {type = "item", name = "stainless-steel",         amount = 30},
    },
    results = {
        {type = "item", name = "oil-boiler-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

ITEM {
    type = "item",
    name = "oil-boiler-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-burner-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "oil-boiler-mk02",
    stack_size = 10
}

ENTITY {
    type = "boiler",
    name = "oil-boiler-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-burner-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "oil-boiler-mk02"},
    max_health = 200,
    corpse = "boiler-remnants",
    impact_category = "metal-large",
    mode = "output-to-separate-pipe",
    resistances = {
        {
            type = "fire",
            percent = 90
        },
        {
            type = "explosion",
            percent = 30
        },
        {
            type = "impact",
            percent = 30
        }
    },
    collision_box = {{-2.29, -2.29}, {2.29, 2.29}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    target_temperature = 250,
    fluid_box = {
        volume = 800,
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_connections = {
            {flow_direction = "input-output", position = {-2.0, 0.0}, direction = defines.direction.west},
            {flow_direction = "input-output", position = {2.0, 0.0},  direction = defines.direction.east}
        },
        production_type = "input-output",
        filter = "water"
    },
    output_fluid_box = {
        volume = 800,
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_connections = {
            {flow_direction = "output", position = {0, -2.0}, direction = defines.direction.north}
        },
        production_type = "output",
        filter = "steam"
    },
    fast_replaceable_group = "oil-boiler",
    energy_consumption = "118.44MW",
    energy_source = {
        type = "fluid",
        emissions_per_minute = {
            pollution = 30
        },
        destroy_non_fuel_fluid = false,
        fluid_box = {
            volume = 400,
            height = 2,
            pipe_connections = {
                {flow_direction = "input", position = {0, 2.0}, direction = defines.direction.south}
            },
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            production_type = "input",
        },
        effectivity = 2,
        burns_fluid = true,
        scale_fluid_usage = true,
        --fluid_usage_per_tick = 2,
        smoke = {{
            name = "turbine-smoke",
            north_position = util.by_pixel(0, -160),
            south_position = util.by_pixel(0, -160),
            east_position = util.by_pixel(0, -160),
            west_position = util.by_pixel(0, -160),
            frequency = 10,
            starting_vertical_speed = 0.04,
            starting_frame_deviation = 50
        }}
    },
    working_sound = {
        sound = {
            filename = "__base__/sound/boiler.ogg",
            volume = 0.8
        },
        max_sounds_per_prototype = 3
    },
    pictures = {
        north = {
            structure = {
                layers = {{
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/off.png",
                    priority = "extra-high",
                    width = 196,
                    height = 320,
                    shift = util.by_pixel(18, -80),
                }},
            },
            fire = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/anim.png",
                priority = "extra-high",
                frame_count = 80,
                line_length = 10,
                width = 96,
                height = 128,
                animation_speed = 0.4,
                shift = util.by_pixel(-1, -176),
            },
            fire_glow = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
                priority = "extra-high",
                frame_count = 1,
                width = 64,
                height = 64,
                shift = util.by_pixel(-1, -6.5),
                --blend_mode = "additive",
            },
        },
        east = {
            structure = {
                layers = {{
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/off.png",
                    priority = "extra-high",
                    width = 196,
                    height = 320,
                    shift = util.by_pixel(18, -80),
                }},
            },
            fire = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/anim.png",
                priority = "extra-high",
                frame_count = 80,
                line_length = 10,
                width = 96,
                height = 128,
                animation_speed = 0.4,
                shift = util.by_pixel(-1, -176),
            },
            fire_glow = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
                priority = "extra-high",
                frame_count = 1,
                width = 64,
                height = 64,
                shift = util.by_pixel(-1, -6.5),
                --blend_mode = "additive",
            },
        },
        south = {
            structure = {
                layers = {{
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/off.png",
                    priority = "extra-high",
                    width = 196,
                    height = 320,
                    shift = util.by_pixel(18, -80),
                }},
            },
            fire = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/anim.png",
                priority = "extra-high",
                frame_count = 80,
                line_length = 10,
                width = 96,
                height = 128,
                animation_speed = 0.4,
                shift = util.by_pixel(-1, -176),
            },
            fire_glow = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
                priority = "extra-high",
                frame_count = 1,
                width = 64,
                height = 64,
                shift = util.by_pixel(-1, -6.5),
                --blend_mode = "additive",
            },
        },
        west = {
            structure = {
                layers = {{
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/off.png",
                    priority = "extra-high",
                    width = 196,
                    height = 320,
                    shift = util.by_pixel(18, -80),
                }},
            },
            fire = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/anim.png",
                priority = "extra-high",
                frame_count = 80,
                line_length = 10,
                width = 96,
                height = 128,
                animation_speed = 0.4,
                shift = util.by_pixel(-1, -176),
            },
            fire_glow = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
                priority = "extra-high",
                frame_count = 1,
                width = 64,
                height = 64,
                shift = util.by_pixel(-1, -6.5),
                --blend_mode = "additive",
            },
        },
    },

    fire_flicker_enabled = false,
    fire_glow_flicker_enabled = false,
    burning_cooldown = 20
}
