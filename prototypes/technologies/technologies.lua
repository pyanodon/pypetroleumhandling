TECHNOLOGY {
    type = "technology",
    name = "oil-sands",
    icon = "__pypetroleumhandling__/graphics/technology/oil-sands.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1","crusher","oil-machines-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "scrude",
    icon = "__pypetroleumhandling__/graphics/technology/scrude.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"oil-machines-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "rubber",
    icon = "__pypetroleumhandling__/graphics/technology/rubber.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1", "oil-machines-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}