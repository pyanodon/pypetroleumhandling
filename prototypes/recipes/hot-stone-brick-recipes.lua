
RECIPE {
    type = "recipe",
    name = "warm-stone-brick",
    category = "rhe",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "stone-brick", amount = 10},
        {type = "fluid", name = "coke-oven-gas", amount = 100, temperature = 500},
    },
    results = {
        {type = "item", name = "warm-stone-brick", amount = 10},
        {type = "fluid", name = "coke-oven-gas", amount = 100, temperature = 250},

    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a2",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    icon_size = 32,
}:add_unlock("coal-processing-1")

RECIPE {
    type = "recipe",
    name = "warmer-stone-brick",
    category = "rhe",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "warm-stone-brick", amount = 10},
        {type = "fluid", name = "coke-oven-gas", amount = 100, temperature = 750},
    },
    results = {
        {type = "item", name = "warmer-stone-brick", amount = 10},
        {type = "fluid", name = "coke-oven-gas", amount = 100, temperature = 500},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a2",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    icon_size = 32,
}:add_unlock("coal-processing-1")

RECIPE {
    type = "recipe",
    name = "hot-stone-brick",
    category = "rhe",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "warmer-stone-brick", amount = 10},
        {type = "fluid", name = "coke-oven-gas", amount = 100, temperature = 1000},
    },
    results = {
        {type = "item", name = "hot-stone-brick", amount = 10},
        {type = "fluid", name = "coke-oven-gas", amount = 100, temperature = 750},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a2",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-stone-brick-recipe.png",
    icon_size = 32,
}:add_unlock("coal-processing-1")

