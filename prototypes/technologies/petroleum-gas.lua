TECHNOLOGY {
    type = "technology",
    name = "petroleum-gas-mk01",
    icon = "__pypetroleumhandling__/graphics/technology/gas-processing-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coalbed-mk01"},
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
    name = "petroleum-gas-mk02",
    icon = "__pypetroleumhandling__/graphics/technology/gas-processing-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"petroleum-gas-mk01","oil-machines-mk02"},
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
    name = "petroleum-gas-mk03",
    icon = "__pypetroleumhandling__/graphics/technology/gas-processing-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"petroleum-gas-mk02","oil-machines-mk03"},
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