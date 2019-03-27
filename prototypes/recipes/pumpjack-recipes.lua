RECIPE {
    type = "recipe",
    name = "oil-01",
    category = "pumpjack",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "small-parts-01", amount = 2},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 20},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "natural-gas-01",
    category = "pumpjack",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "small-parts-01", amount = 2},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 20},
    },
    --main_product = "transport-belt",
    icon = "__pypetroleumhandling__/graphics/icons/natural-gas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk01")