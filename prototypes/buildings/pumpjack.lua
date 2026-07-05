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

ITEM {
    type = "item",
    name = "pumpjack-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "b",
    place_result = "pumpjack-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk01"},
    fast_replaceable_group = "pumpjack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    module_slots = 1,
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "250kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/pumpjack-mk01/small-pumpjack.png",
                    width = 1770 / 10,
                    height = 1070 / 5,
                    line_length = 10,
                    frame_count = 50,
                    shift = {-0.2, -0.3},
                    animation_speed = 0.4,
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
                },
            }
        },
    },

    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-0.5, 2.5}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            pipe_connections = {{flow_direction = "input", position = {0.5, -2.5}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.8},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.3},
    }
}
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

ITEM {
    type = "item",
    name = "pumpjack-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk02",
    order = "b",
    place_result = "pumpjack-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk02"},
    fast_replaceable_group = "pumpjack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_slots = 2,
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "450kW",
    graphics_set = {
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
                },
            }
        },
    },

    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            pipe_connections = {{flow_direction = "input", position = {1.0, -3.0}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.8},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk01.ogg", volume = 0.3},
    }
}
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

ITEM {
    type = "item",
    name = "pumpjack-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "b",
    place_result = "pumpjack-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk03"},
    fast_replaceable_group = "pumpjack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    module_slots = 3,
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "650kW",
    graphics_set = {
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
                },
            }
        },
    },

    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            pipe_connections = {{flow_direction = "input", position = {3.0, -4.0}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 0.8},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 0.3},
    }
}
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

ITEM {
    type = "item",
    name = "pumpjack-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "b",
    place_result = "pumpjack-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pumpjack-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/pumpjack-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pumpjack-mk04"},
    fast_replaceable_group = "pumpjack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_slots = 4,
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"pumpjack"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 3
        },
    },
    energy_usage = "750kW",
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "output",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-3.0, 5.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.sexy_pipe_pictures(),
            pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
            pipe_covers = pipecoverspictures(),
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            pipe_connections = {{flow_direction = "input", position = {3.0, -5.0}, direction = defines.direction.north}}
        },
    },
    graphics_set = {
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
                },
            }
        },
    },

    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 0.8},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/pumpjack-mk02.ogg", volume = 0.3},
    }
}
