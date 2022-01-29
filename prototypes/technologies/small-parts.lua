TECHNOLOGY {
    type = "technology",
    name = "small-parts-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/advanced-small-parts.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}


TECHNOLOGY {
    type = "technology",
    name = "small-parts-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/special-small-parts.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"small-parts-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 50
    }
}
