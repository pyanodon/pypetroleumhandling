TECHNOLOGY {
    type = "technology",
    name = "py-oil-processing-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/drilling-fluid-1.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "py-oil-processing-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/drilling-fluid-1.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {},
    dependencies = {"py-oil-processing-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "py-oil-processing-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/drilling-fluid-1.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {},
    dependencies = {"py-oil-processing-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "py-oil-processing-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/drilling-fluid-1.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {},
    dependencies = {"py-oil-processing-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
        },
        time = 30
    }
}
