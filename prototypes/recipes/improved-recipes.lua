RECIPE {
    type = "recipe",
    name = "transport-belt-2",
    category = "reformer",
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