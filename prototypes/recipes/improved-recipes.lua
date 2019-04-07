RECIPE {
    type = "recipe",
    name = "transport-belt-2",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 2},
        {type = "item", name = "small-parts-01", amount = 3},
        {type = "item", name = "belt", amount = 5},
    },
    results = {
        {type = "item", name = "transport-belt", amount = 15},
    },
    main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "methane-to-methanol",
    category = "methanol",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 100},
        {type = "fluid", name = "hot-air", amount = 100},
        {type = "item", name = "nichrome", amount = 1},
    },
    results = {
        {type = "fluid", name = "methanol", amount = 150},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("methanol-processing-1"):replace_ingredient("nichrome", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "methane-to-methanol4",
    category = "methanol",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 100},
        {type = "fluid", name = "hot-air", amount = 100},
        {type = "item", name = "copper-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "methanol", amount = 100},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("methanol-processing-1"):add_ingredient({type = "item", name = "titanium-alloy", amount = 2})