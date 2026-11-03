RECIPE {
    type = "recipe",
    name = "anthracene-gasoline-hydrogenation",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "anthracene-oil", amount = 50},
        {type = "fluid", name = "hydrogen",       amount = 50}
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 25},
    },
    main_product = "gasoline",
    subgroup = "py-petroleum-handling-recipes",
    order = "a",
    localised_name = {"recipe-name.anthracene-gasoline-hydrogenation"}
}:add_unlock("heavy-oil-mk01")

RECIPE {
    type = "recipe",
    name = "anthracene-gasoline-cracking",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "anthracene-oil", amount = 50},
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 20},
        {type = "item",  name = "coke",     amount = 5}
    },
    main_product = "gasoline",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("tar-processing")
