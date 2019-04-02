TECHNOLOGY {
    type = "technology",
    name = "coalbed-mk01",
    icon = "__pypetroleumhandling__/graphics/technology/coalbed-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"oil-machines-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "coalbed-mk02",
    icon = "__pypetroleumhandling__/graphics/technology/coalbed-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coalbed-mk01","oil-machines-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 45
    }
}