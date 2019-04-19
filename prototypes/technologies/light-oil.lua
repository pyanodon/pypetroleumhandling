TECHNOLOGY {
    type = "technology",
    name = "light-oil-mk01",
    icon = "__pypetroleumhandling__/graphics/technology/light-oil-processing-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"oil-machines-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "light-oil-mk02",
    icon = "__pypetroleumhandling__/graphics/technology/light-oil-processing-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"light-oil-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "light-oil-mk03",
    icon = "__pypetroleumhandling__/graphics/technology/light-oil-processing-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"light-oil-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 45
    }
}