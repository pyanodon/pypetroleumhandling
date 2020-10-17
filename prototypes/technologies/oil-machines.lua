TECHNOLOGY {
    type = "technology",
    name = "oil-machines-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/oil-machines-01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1","crusher","separation"},
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
    name = "oil-machines-mk02",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/oil-machines-02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"oil-machines-mk01"},
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
    name = "oil-machines-mk03",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/oil-machines-03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"oil-machines-mk02","coalbed-mk02"},
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

TECHNOLOGY {
    type = "technology",
    name = "oil-machines-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/oil-machines-04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"oil-machines-mk03"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 45
    }
}