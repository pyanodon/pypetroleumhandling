RECIPE {
    type = "recipe",
    name = "oil-01",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "small-parts-01",   amount = 2},
        {type = "fluid", name = "drilling-fluid-0", amount = 50},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 40},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk01")

RECIPE {
    type = "recipe",
    name = "oil-02",
    category = "pumpjack",
    enabled = false,
    energy_required = 9,
    ingredients = {
        {type = "item",  name = "small-parts-01",   amount = 2},
        {type = "item",  name = "drill-head",       amount = 1},
        {type = "fluid", name = "drilling-fluid-1", amount = 50},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 140},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk02")

RECIPE {
    type = "recipe",
    name = "oil-03",
    category = "pumpjack",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item",  name = "small-parts-02",   amount = 2},
        {type = "item",  name = "drill-head",       amount = 1},
        {type = "fluid", name = "drilling-fluid-2", amount = 50},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 740},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk03")

RECIPE {
    type = "recipe",
    name = "oil-04",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "small-parts-03",   amount = 2},
        {type = "item",  name = "drill-head",       amount = 1},
        {type = "fluid", name = "drilling-fluid-3", amount = 50},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 1600},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk04")

RECIPE {
    type = "recipe",
    name = "tar-01",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "small-parts-01",   amount = 2},
        {type = "fluid", name = "drilling-fluid-0", amount = 50},
    },
    results = {
        {type = "fluid", name = "tar", amount = 100},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk01")

RECIPE {
    type = "recipe",
    name = "tar-02",
    category = "pumpjack",
    enabled = false,
    energy_required = 9,
    ingredients = {
        {type = "item",  name = "small-parts-01",   amount = 2},
        {type = "item",  name = "drill-head",       amount = 1},
        {type = "fluid", name = "drilling-fluid-1", amount = 50},
    },
    results = {
        {type = "fluid", name = "tar", amount = 300},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk02")

RECIPE {
    type = "recipe",
    name = "tar-03",
    category = "pumpjack",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item",  name = "small-parts-02",   amount = 2},
        {type = "item",  name = "drill-head",       amount = 1},
        {type = "fluid", name = "drilling-fluid-2", amount = 50},
    },
    results = {
        {type = "fluid", name = "tar", amount = 700},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk03")

RECIPE {
    type = "recipe",
    name = "tar-04",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "small-parts-03",   amount = 2},
        {type = "item",  name = "drill-head",       amount = 1},
        {type = "fluid", name = "drilling-fluid-3", amount = 50},
    },
    results = {
        {type = "fluid", name = "tar", amount = 1000},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk04")

RECIPE {
    type = "recipe",
    name = "natural-gas-01",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "small-parts-01",   amount = 2},
        {type = "fluid", name = "drilling-fluid-0", amount = 50},
    },
    results = {
        {type = "fluid", name = "raw-gas", amount = 40},
    },
    main_product = "raw-gas",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

RECIPE {
    type = "recipe",
    name = "natural-gas-02",
    category = "pumpjack",
    enabled = false,
    energy_required = 9,
    ingredients = {
        {type = "item",  name = "small-parts-01",   amount = 2},
        {type = "item",  name = "drill-head",       amount = 1},
        {type = "fluid", name = "drilling-fluid-1", amount = 50},
    },
    results = {
        {type = "fluid", name = "raw-gas", amount = 140},
    },
    main_product = "raw-gas",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk02")

RECIPE {
    type = "recipe",
    name = "natural-gas-03",
    category = "pumpjack",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item",  name = "small-parts-02",   amount = 2},
        {type = "item",  name = "drill-head",       amount = 1},
        {type = "fluid", name = "drilling-fluid-2", amount = 50},
    },
    results = {
        {type = "fluid", name = "raw-gas", amount = 740},
    },
    main_product = "raw-gas",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk03")

RECIPE {
    type = "recipe",
    name = "natural-gas-04",
    category = "pumpjack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "small-parts-03",   amount = 2},
        {type = "item",  name = "drill-head",       amount = 2},
        {type = "fluid", name = "drilling-fluid-3", amount = 50},
    },
    results = {
        {type = "fluid", name = "raw-gas", amount = 1600},
    },
    main_product = "raw-gas",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk04")

RECIPE {
    type = "recipe",
    name = "water-saline-pumpjack",
    category = "pumpjack",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "small-parts-01",   amount = 2},
        {type = "fluid", name = "drilling-fluid-1", amount = 50},
    },
    results = {
        {type = "fluid", name = "water-saline", amount = 500},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("drilling-fluid-mk02")

RECIPE {
    type = "recipe",
    name = "water-free",
    category = "pumpjack",
    enabled = false,
    energy_required = 1,
    ingredients = {

    },
    results = {
        {type = "fluid", name = "water", amount = 300},
    },
    --main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "w"
}:add_unlock("drilling-fluid-mk01")
