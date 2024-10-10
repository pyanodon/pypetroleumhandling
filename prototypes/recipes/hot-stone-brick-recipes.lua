--coke oven gas

RECIPE {
    type = "recipe",
    name = "warm-stone-brick-1",
    category = "rhe",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "stone-brick",   amount = 5},
        {type = "fluid", name = "coke-oven-gas", amount = 100, minimum_temperature = 250},
    },
    results = {
        {type = "item",  name = "warm-stone-brick", amount = 5},
        {type = "fluid", name = "coke-oven-gas",    amount = 100, temperature = 100},
    },
    main_product = "warm-stone-brick",
    subgroup = "py-petroleum-handling-hot-air",
    order = "b1",
    --icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    --icon_size = 32,
}:add_unlock("hot-air-mk01")

data.raw.recipe["coke-coal"].results =
{
    {type = "item",  name = "coke",          amount = 4},
    {type = "fluid", name = "coke-oven-gas", amount = 20, temperature = 250}
}

RECIPE {
    type = "recipe",
    name = "warmer-stone-brick-1",
    category = "rhe",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "warm-stone-brick", amount = 5},
        {type = "fluid", name = "coke-oven-gas",    amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item",  name = "warmer-stone-brick", amount = 5},
        {type = "fluid", name = "coke-oven-gas",      amount = 100, temperature = 250},
    },
    main_product = "warmer-stone-brick",
    subgroup = "py-petroleum-handling-hot-air",
    order = "b2",
    --icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    --icon_size = 32,
}:add_unlock("hot-air-mk02")

--outlet gas 04
RECIPE {
    type = "recipe",
    name = "warm-stone-brick-2",
    category = "rhe",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item",  name = "stone-brick",   amount = 20},
        {type = "fluid", name = "outlet-gas-04", amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item",  name = "warm-stone-brick", amount = 20},
        {type = "fluid", name = "outlet-gas-04",    amount = 100, temperature = 250},
    },
    main_product = "warm-stone-brick",
    subgroup = "py-petroleum-handling-hot-air",
    order = "c1",
    --icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    --icon_size = 32,
}:add_unlock("hot-air-mk03")

RECIPE {
    type = "recipe",
    name = "warmer-stone-brick-2",
    category = "rhe",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item",  name = "warm-stone-brick", amount = 20},
        {type = "fluid", name = "outlet-gas-04",    amount = 100, minimum_temperature = 750},
    },
    results = {
        {type = "item",  name = "warmer-stone-brick", amount = 20},
        {type = "fluid", name = "outlet-gas-04",      amount = 100, temperature = 500},
    },
    main_product = "warmer-stone-brick",
    subgroup = "py-petroleum-handling-hot-air",
    order = "c2",
    --icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    --icon_size = 32,
}:add_unlock("hot-air-mk03")

RECIPE {
    type = "recipe",
    name = "hot-stone-brick",
    category = "rhe",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item",  name = "warmer-stone-brick", amount = 20},
        {type = "fluid", name = "outlet-gas-04",      amount = 100, minimum_temperature = 1000},
    },
    results = {
        {type = "item",  name = "hot-stone-brick", amount = 20},
        {type = "fluid", name = "outlet-gas-04",   amount = 100, temperature = 750},
    },
    main_product = "hot-stone-brick",
    subgroup = "py-petroleum-handling-hot-air",
    order = "c3",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    icon_size = 32,
}:add_unlock("hot-air-mk03")

RECIPE {
    type = "recipe",
    name = "warm-air-1",
    category = "rhe",
    --hidden = true,
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item",  name = "warm-stone-brick", amount = 20},
        {type = "fluid", name = "pressured-air",    amount = 150},
    },
    results = {
        {type = "fluid", name = "hot-air",     amount = 150},
        {type = "item",  name = "stone-brick", amount = 20},
    },
    main_product = "hot-air",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-hot-air",
    order = "a2"
}:add_unlock("hot-air-mk01")

RECIPE {
    type = "recipe",
    name = "warmer-air-2",
    category = "rhe",
    --hidden = true,
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item",  name = "warmer-stone-brick", amount = 20},
        {type = "fluid", name = "pressured-air",      amount = 150},
    },
    results = {
        {type = "fluid", name = "hot-air",     amount = 300},
        {type = "item",  name = "stone-brick", amount = 20},
    },
    main_product = "hot-air",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-hot-air",
    order = "a3"
}:add_unlock("hot-air-mk02")

RECIPE {
    type = "recipe",
    name = "hot-air-3",
    category = "rhe",
    --hidden = true,
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item",  name = "hot-stone-brick", amount = 20},
        {type = "fluid", name = "pressured-air",   amount = 150},
    },
    results = {
        {type = "fluid", name = "hot-air",     amount = 500},
        {type = "item",  name = "stone-brick", amount = 20},
    },
    main_product = "hot-air",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-hot-air",
    order = "a4"
}:add_unlock("hot-air-mk03")

--reheating hot air gasses with combustion mixture

RECIPE {
    type = "recipe",
    name = "reheat-coke-gas",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "coke-oven-gas",       amount = 100, maximum_temperature = 100},
        {type = "fluid", name = "combustion-mixture1", amount = 50,  minimum_temperature = 500}
    },
    results = {
        {type = "fluid", name = "coke-oven-gas", amount = 95, temperature = 500},
    },
    main_product = "coke-oven-gas",
    --icon = "__pyfusionenergygraphics__/graphics/icons/steam-exchange.png",
    --icon_size = 32,
    subgroup = "py-petroleum-handling-hot-air",
    order = "c1"
}:add_unlock("hot-air-mk02")

RECIPE {
    type = "recipe",
    name = "reheat-outlet-gas-1",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "outlet-gas-04",       amount = 100, maximum_temperature = 250},
        {type = "fluid", name = "combustion-mixture1", amount = 75,  minimum_temperature = 750}
    },
    results = {
        {type = "fluid", name = "outlet-gas-04", amount = 95, temperature = 750},
    },
    main_product = "outlet-gas-04",
    --icon = "__pyfusionenergygraphics__/graphics/icons/steam-exchange.png",
    --icon_size = 32,
    subgroup = "py-petroleum-handling-hot-air",
    order = "c2"
}:add_unlock("hot-air-mk03")

RECIPE {
    type = "recipe",
    name = "reheat-outlet-gas-2",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "outlet-gas-04",       amount = 100, maximum_temperature = 500},
        {type = "fluid", name = "combustion-mixture1", amount = 100, minimum_temperature = 1000}
    },
    results = {
        {type = "fluid", name = "outlet-gas-04", amount = 95, temperature = 1000},
    },
    main_product = "outlet-gas-04",
    --icon = "__pyfusionenergygraphics__/graphics/icons/steam-exchange.png",
    --icon_size = 32,
    subgroup = "py-petroleum-handling-hot-air",
    order = "c3"
}:add_unlock("hot-air-mk03")
