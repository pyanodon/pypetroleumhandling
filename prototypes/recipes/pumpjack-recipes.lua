RECIPE {
    type = "recipe",
    name = "oil-01",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "small-parts-01", amount = 2},
        {type = "fluid", name = "drilling-fluid-1", amount = 50},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 40},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "oil-02",
    category = "pumpjack",
    enabled = false,
    energy_required = 9,
    ingredients = {
        {type = "item", name = "small-parts-01", amount = 2},
        {type = "item", name = "drill-head", amount = 1},
        {type = "fluid", name = "drilling-fluid-2", amount = 50},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 140},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "oil-03",
    category = "pumpjack",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "small-parts-02", amount = 2},
        {type = "item", name = "drill-head", amount = 1},
        {type = "fluid", name = "drilling-fluid-3", amount = 50},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 740},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "oil-04",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "small-parts-03", amount = 2},
        {type = "item", name = "drill-head", amount = 1},
        {type = "fluid", name = "drilling-fluid-3", amount = 50},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 1600},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk04")

RECIPE {
    type = "recipe",
    name = "natural-gas-01",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "small-parts-01", amount = 2},
        {type = "fluid", name = "drilling-fluid-1", amount = 50},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 40},
    },
    --main_product = "transport-belt",
    icon = "__pypetroleumhandling__/graphics/icons/natural-gas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "natural-gas-02",
    category = "pumpjack",
    enabled = false,
    energy_required = 9,
    ingredients = {
        {type = "item", name = "small-parts-01", amount = 2},
        {type = "item", name = "drill-head", amount = 1},
        {type = "fluid", name = "drilling-fluid-2", amount = 50},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 140},
    },
    --main_product = "transport-belt",
    icon = "__pypetroleumhandling__/graphics/icons/natural-gas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "natural-gas-03",
    category = "pumpjack",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "small-parts-02", amount = 2},
        {type = "item", name = "drill-head", amount = 1},
        {type = "fluid", name = "drilling-fluid-3", amount = 50},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 740},
    },
    --main_product = "transport-belt",
    icon = "__pypetroleumhandling__/graphics/icons/natural-gas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "natural-gas-04",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "small-parts-03", amount = 2},
        {type = "item", name = "drill-head", amount = 2},
        {type = "fluid", name = "drilling-fluid-3", amount = 50},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 1600},
    },
    --main_product = "transport-belt",
    icon = "__pypetroleumhandling__/graphics/icons/natural-gas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk04")

RECIPE {
    type = "recipe",
    name = "water-saline-pumpjack",
    category = "pumpjack",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "small-parts-01", amount = 2},
        {type = "fluid", name = "drilling-fluid-1", amount = 50},
    },
    results = {
        {type = "fluid", name = "water-saline", amount = 200},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk02")