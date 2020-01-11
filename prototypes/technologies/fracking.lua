TECHNOLOGY {
    type = "technology",
    name = "fracking",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/fracking.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coalbed-mk02","oil-machines-mk04","petroleum-gas-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'utility-science-pack', 1},
            {"production-science-pack", 1}
        },
        time = 45
    }
}