RECIPE {
    type = "recipe",
    name = "residual-mixture-distillation",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "residual-mixture", amount = 200},
        {type = "fluid", name = "vacuum",           amount = 200},
    },
    results = {
        {type = "fluid", name = "residual-oil",         amount = 50},
        {type = "fluid", name = "hot-residual-mixture", amount = 25},
        {type = "item",  name = "coke",                 amount = 40},
    },
    main_product = "residual-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

--residual oil to cracking or hydrotreating to process into lighter hydrocarbons



--hot residual oil to deasphalting and cat cracking/hydrotreating


--TEMP ENABLE OLD RECIPES--
RECIPE {
    type = "recipe",
    name = "residual-mixture",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "residual-oil", amount = 200},
        {type = "fluid", name = "steam",        amount = 200},
        {type = "item",  name = "ash",          amount = 10}
    },
    results = {
        {type = "fluid", name = "residual-mixture", amount = 100},
    },
    main_product = "residual-mixture",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("oil-distillation")

RECIPE {
    type = "recipe",
    name = "hot-residual-mixture",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "residual-mixture", amount = 100},
        {type = "item",  name = "coke",             amount = 10}
    },
    results = {
        {type = "fluid", name = "hot-residual-mixture", amount = 100},
    },
    main_product = "hot-residual-mixture",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("oil-distillation")

if mods["pyrawores"] then
    RECIPE {
        type = "recipe",
        name = "hot-residual-mixture-to-coke",
        category = "upgrader",
        enabled = false,
        energy_required = 6,
        ingredients = {
            {type = "fluid", name = "hot-residual-mixture", amount = 150},
            {type = "fluid", name = "water",                amount = 300},
            {type = "fluid", name = "steam",                amount = 300},
        },
        results = {
            {type = "item",  name = "coke",          amount = 40},
            {type = "fluid", name = "coke-oven-gas", amount = 60, temperature = 500},
        },
        main_product = "coke",
        subgroup = "py-petroleum-handling-recipes",
        order = "a"
    }:add_unlock("oil-distillation")
else
    RECIPE {
        type = "recipe",
        name = "hot-residual-mixture-to-coke-2",
        category = "upgrader",
        enabled = false,
        energy_required = 6,
        ingredients = {
            {type = "fluid", name = "hot-residual-mixture", amount = 150},
            {type = "fluid", name = "water",                amount = 300},
            {type = "fluid", name = "steam",                amount = 300},
        },
        results = {
            {type = "item", name = "coke", amount = 30},
        },
        main_product = "coke",
        subgroup = "py-petroleum-handling-recipes",
        order = "a"
    }:add_unlock("oil-distillation")
end
