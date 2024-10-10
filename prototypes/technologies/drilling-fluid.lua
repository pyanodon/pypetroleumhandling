TECHNOLOGY {
    type = "technology",
    name = "drilling-fluid-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/drilling-fluid-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "drilling-fluid-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/drilling-fluid-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"drilling-fluid-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "drilling-fluid-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/drilling-fluid-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"drilling-fluid-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "drilling-fluid-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/drilling-fluid-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"drilling-fluid-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"military-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1}
        },
        time = 30
    }
}
