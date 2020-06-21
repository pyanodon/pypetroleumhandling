
RECIPE {
    type = "recipe",
    name = "warm-stone-brick",
    category = "rhe",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "stone-brick", amount = 10},
        {type = "fluid", name = "outlet-gas-04", amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "warm-stone-brick", amount = 10},
        {type = "fluid", name = "outlet-gas-04", amount = 100, temperature = 250},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a2",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    icon_size = 32,
}:add_unlock("coke-mk03")

RECIPE {
    type = "recipe",
    name = "warmer-stone-brick",
    category = "rhe",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "warm-stone-brick", amount = 10},
        {type = "fluid", name = "outlet-gas-04", amount = 100, minimum_temperature = 750},
    },
    results = {
        {type = "item", name = "warmer-stone-brick", amount = 10},
        {type = "fluid", name = "outlet-gas-04", amount = 100, temperature = 500},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a2",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    icon_size = 32,
}:add_unlock("coke-mk03")

RECIPE {
    type = "recipe",
    name = "hot-stone-brick",
    category = "rhe",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "warmer-stone-brick", amount = 10},
        {type = "fluid", name = "outlet-gas-04", amount = 100, minimum_temperature = 1000},
    },
    results = {
        {type = "item", name = "hot-stone-brick", amount = 10},
        {type = "fluid", name = "outlet-gas-04", amount = 100, temperature = 750},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a2",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    icon_size = 32,
}:add_unlock("coke-mk03")

RECIPE {
    type = "recipe",
    name = "warm-air-1",
    category = "rhe",
    --hidden = true,
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "warm-stone-brick", amount = 10},
        {type = "fluid", name = "pressured-air", amount = 150},
    },
    results = {
        {type = "fluid", name = "hot-air", amount = 200},
        {type = "item", name = "stone-brick", amount = 10},
    },
    main_product = "hot-air",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a2"
}:add_unlock("coke-mk03")

RECIPE {
    type = "recipe",
    name = "warmer-air-2",
    category = "rhe",
    --hidden = true,
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "warmer-stone-brick", amount = 10},
        {type = "fluid", name = "pressured-air", amount = 150},
    },
    results = {
        {type = "fluid", name = "hot-air", amount = 600},
        {type = "item", name = "stone-brick", amount = 10},
    },
    main_product = "hot-air",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a2"
}:add_unlock("coke-mk03")

RECIPE {
    type = "recipe",
    name = "hot-air-3",
    category = "rhe",
    --hidden = true,
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "hot-stone-brick", amount = 10},
        {type = "fluid", name = "pressured-air", amount = 150},
    },
    results = {
        {type = "fluid", name = "hot-air", amount = 1000},
        {type = "item", name = "stone-brick", amount = 10},
    },
    main_product = "hot-air",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a2"
}:add_unlock("coke-mk03")
