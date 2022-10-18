
RECIPE {
    type = "recipe",
    name = "kerogen-extraction",
    enabled = true,
    category = "kerogen",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "steam", amount = 1000},
        {type = "item", name = "kerogen", amount = 25},
    },
    results = {
        {type = "fluid", name = "scrude", amount = 100},
    },
    main_product = "scrude",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("kerogen")

--TODO:clean up these recipes as most of these direct production recipes need to go away
--[[
RECIPE {
    type = "recipe",
    name = "scrude-to-natural-gas",
    category = "distilator",
    enabled = true,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100}, --add vacuum
        {type = "item", name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 100},
    },
    main_product = "natural-gas",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/natural-gas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "scrude-to-light-oil",
    category = "distilator",
    enabled = true,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "fluid", name = "water", amount = 200},
    },
    results = {
        {type = "fluid", name = "light-oil", amount = 100},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},
    },
    main_product = "light-oil",
    icon = "__base__/graphics/icons/fluid/light-oil.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "scrude-to-naphtha",
    category = "cracker",
    enabled = true,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "fluid", name = "water", amount = 1000},
    },
    results = {
        {type = "fluid", name = "naphtha", amount = 150},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},
    },
    main_product = "naphtha",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/naphtha.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "extract-sulfur-scrude",
    category = "desulfurization",
    enabled = true,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "item", name = "copper-plate", amount = 2}, --nickel
    },
    results = {
        {type = "item", name = "sulfur", amount = 15},
    },
    main_product = "sulfur",
    icon = "__base__/graphics/icons/sulfur.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")
]]--
