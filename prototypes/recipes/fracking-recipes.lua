RECIPE {
    type = "recipe",
    name = "frack-saline-water",
    category = "fracking",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "drilling-fluid-1", amount = 500},
        {type = "item", name = "drill-head", amount = 3},
        {type = "item", name = "pipe", amount = 10},
        {type = "item", name = "concrete", amount = 15},
        {type = "item", name = "explosives", amount = 10},
    },
    results = {
        {type = "fluid", name = "drilling-fluid-1", amount = 300},
        {type = "fluid", name = "water-saline", amount = 4000},
    },
    main_product = "water-saline",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("fracking")

RECIPE {
    type = "recipe",
    name = "frack-oil",
    category = "fracking",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "drilling-fluid-2", amount = 500},
        {type = "item", name = "drill-head", amount = 3},
        {type = "item", name = "pipe", amount = 10},
        {type = "item", name = "concrete", amount = 15},
        {type = "item", name = "explosives", amount = 10},
    },
    results = {
        {type = "fluid", name = "drilling-fluid-2", amount = 300},
        {type = "fluid", name = "crude-oil", amount = 3500},
    },
    main_product = "crude-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("fracking")

RECIPE {
    type = "recipe",
    name = "frack-natural-gas",
    category = "fracking",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "drilling-fluid-3", amount = 500},
        {type = "item", name = "drill-head", amount = 3},
        {type = "item", name = "pipe", amount = 10},
        {type = "item", name = "concrete", amount = 15},
        {type = "item", name = "explosives", amount = 10},
    },
    results = {
        {type = "fluid", name = "drilling-fluid-3", amount = 300},
        {type = "fluid", name = "natural-gas", amount = 4000},
    },
    main_product = "natural-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("fracking")