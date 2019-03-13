RECIPE {
    type = "recipe",
    name = "tar-to-oil",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 300},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 100},
    },
    main_product = "crude-oil",
    icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "tar-to-scrude",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 300},
        {type = "item", name = "chromium", amount = 3},
    },
    results = {
        {type = "fluid", name = "scrude", amount = 100},
    },
    main_product = "scrude",
    icon = "__pypetroleumhandling__/graphics/icons/scrude.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "scrude-to-natural-gas",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100}, --add vacuum
        {type = "item", name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 100},
    },
    main_product = "natural-gas",
    icon = "__pypetroleumhandling__/graphics/icons/natural-gas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "scrude-to-light-oil",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "fluid", name = "water", amount = 200},
    },
    results = {
        {type = "fluid", name = "light-oil", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 100},
    },
    main_product = "light-oil",
    icon = "__base__/graphics/icons/fluid/light-oil.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("scrude")