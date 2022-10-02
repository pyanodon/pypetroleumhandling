TECHNOLOGY {
    type = "technology",
    name = "tar-processing-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/light-oil-processing-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
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
    name = "tar-processing-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/light-oil-processing-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"tar-processing-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            --{'logistic-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "tar-processing-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/light-oil-processing-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"tar-processing-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            --{'logistic-science-pack', 1},
            --{'chemical-science-pack', 1}
        },
        time = 45
    }
}