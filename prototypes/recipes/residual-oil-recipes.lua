
  RECIPE {
    type = "recipe",
    name = "residual-mixture-distillation",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "residual-mixture", amount = 200},
        {type = "fluid", name = "vacuum", amount = 200},
    },
    results = {
        {type = "fluid", name = "residual-oil", amount = 50},
        {type = "fluid", name = "hot-residual-mixture", amount = 25},
        {type = "item", name = "coke", amount = 40},
    },
    main_product = "residual-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

--residual oil to cracking or hydrotreating to process into lighter hydrocarbons



--hot residual oil to deasphalting and cat cracking/hydrotreating
