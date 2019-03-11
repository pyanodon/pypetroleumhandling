TECHNOLOGY {
    type = "technology",
    name = "oil-machines-mk01",
    icon = "__pypetroleumhandling__/graphics/technology/oil-machines-01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1","crusher"},
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
    icon = "__pypetroleumhandling__/graphics/technology/oil-machines-02.png",
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