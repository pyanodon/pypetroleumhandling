TECHNOLOGY {
    type = "technology",
    name = "kerogen",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/kerogen.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"oil-machines-mk03","tholin-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {"production-science-pack", 1}
        },
        time = 45
    }
}
