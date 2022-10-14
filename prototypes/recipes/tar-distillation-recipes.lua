RECIPE {
    type = "recipe",
    name = "tar-refining",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "tar", amount = 100},
        {type = "fluid", name = "steam", amount = 400, temperature = 250},
    },
    results = {
        {type = "fluid", name = "middle-oil", amount = 10},
        {type = "fluid", name = "creosote", amount = 8}, --wash oil
        {type = "fluid", name = "anthracene-oil", amount = 25},
        {type = "fluid", name = "pitch", amount = 47},
    },
    main_product = "pitch",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tar-refining.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("tar-processing")

RECIPE {
    type = "recipe",
    name = "tar-refining-tops",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "middle-oil", amount = 100},
        {type = "fluid", name = "steam", amount = 400, temperature = 250},
    },
    results = {
        {type = "fluid", name = "light-oil", amount = 50},
        {type = "fluid", name = "carbolic-oil", amount = 50},
        {type = "fluid", name = "naphthalene-oil", amount = 100},
    },
    main_product = "naphthalene-oil",
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("tar-processing")

RECIPE {
    type = "recipe",
    name = "pitch-refining",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "pitch", amount = 100},
        {type = "fluid", name = "steam", amount = 400, temperature = 250},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 5},
        {type = "fluid", name = "light-oil", amount = 10},
        {type = "fluid", name = "naphthalene-oil", amount = 10},
        {type = "fluid", name = "anthracene-oil", amount = 15},
        {type = "item", name = "coke", amount = 60},
    },
    main_product = "coke",
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("tar-processing")
