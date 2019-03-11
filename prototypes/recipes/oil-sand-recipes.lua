RECIPE {
    type = "recipe",
    name = "crush-oil-sand",
    category = "crusher",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "oil-sand", amount = 3}
    },
    results = {
        {type = "item", name = "crushed-oil-sand", amount = 1},
        {type = "item", name = "stone", amount = 1, probability = 0.5}
    },
    main_product = "crushed-oil-sand",
    icon = "__pypetroleumhandling__/graphics/icons/crusher-oil-sand.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-oil-sand-recipes",
    order = "a"
}:add_unlock("oil-sands")
