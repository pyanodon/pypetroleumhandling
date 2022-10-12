TECHNOLOGY {
    type = "technology",
    name = "heavy-oil-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/heavy-oil-mk01.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "heavy-oil-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/heavy-oil-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"heavy-oil-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            --{"chemical-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "heavy-oil-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/heavy-oil-mk03.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"heavy-oil-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            --{"chemical-science-pack", 1},
            --{"production-science-pack", 1},
        },
        time = 50
    }
}
