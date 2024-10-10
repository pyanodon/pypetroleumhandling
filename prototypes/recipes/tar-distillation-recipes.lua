RECIPE {
    type = "recipe",
    name = "tar-refining",
    category = "tar",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "tar",   amount = 100},
        {type = "fluid", name = "steam", amount = 100, minimum_temperature = 250},
    },
    results = {
        {type = "fluid", name = "middle-oil",     amount = 30},
        {type = "fluid", name = "creosote",       amount = 24}, --wash oil
        {type = "fluid", name = "anthracene-oil", amount = 75},
        {type = "fluid", name = "pitch",          amount = 140},
    },
    crafting_machine_tint =
    {
        primary = {r = 0, g = 0, b = 0},
        secondary = {r = 1, g = 1, b = 1},
        tertiary = {r = 0.360, g = 0.250, b = 0.070},
        quaternary = {r = 0.360, g = 0.250, b = 0.070},
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
    category = "tar",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "middle-oil", amount = 100},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 250},
    },
    results = {
        {type = "fluid", name = "light-oil",       amount = 50},
        {type = "fluid", name = "carbolic-oil",    amount = 50},
        {type = "fluid", name = "naphthalene-oil", amount = 100},
    },
    crafting_machine_tint =
    {
        primary = {r = 25, g = 50, b = 100},
        secondary = {r = 1, g = 1, b = 1},
        tertiary = {r = 0.360, g = 0.250, b = 0.070},
        quaternary = {r = 0.360, g = 0.250, b = 0.070},
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
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "pitch", amount = 100},
        {type = "fluid", name = "steam", amount = 100, minimum_temperature = 250},
    },
    results = {
        {type = "fluid", name = "hydrogen",        amount = 10},
        {type = "fluid", name = "light-oil",       amount = 20},
        {type = "fluid", name = "naphthalene-oil", amount = 20},
        {type = "fluid", name = "anthracene-oil",  amount = 30},
        {type = "item",  name = "coke",            amount = 10},
    },
    main_product = "coke",
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("tar-processing")
