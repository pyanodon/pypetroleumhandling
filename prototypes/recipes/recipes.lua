RECIPE {
    type = "recipe",
    name = "bolts",
    category = "crafting",
    enabled = true,
    energy_required = 0.2,
    ingredients = {
        {type = "item", name = "iron-stick", amount = 2},
    },
    results = {
        {type = "item", name = "bolts", amount = 2},
    },
    main_product = "bolts",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/bolts.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}

RECIPE {
    type = "recipe",
    name = "small-parts-01",
    category = "crafting",
    enabled = true,
    energy_required = 0.2,
    ingredients = {
        {type = "item", name = "iron-gear-wheel", amount = 1},
        {type = "item", name = "copper-cable",    amount = 3},
        {type = "item", name = "bolts",           amount = 3},
    },
    results = {
        {type = "item", name = "small-parts-01", amount = 2},
    },
    main_product = "small-parts-01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/small-parts-01.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}

RECIPE {
    type = "recipe",
    name = "small-parts-02",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "iron-gear-wheel", amount = 1},
        {type = "item", name = "steel-plate",     amount = 1},
        {type = "item", name = "nexelit-plate",   amount = 1},
        {type = "item", name = "belt",            amount = 2},
        {type = "item", name = "bolts",           amount = 10},
        {type = "item", name = "iron-stick",      amount = 3},
    },
    results = {
        {type = "item", name = "small-parts-02", amount = 3},
    },
    main_product = "small-parts-02",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/small-parts-02.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("small-parts-mk02")

RECIPE {
    type = "recipe",
    name = "small-parts-03",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item",  name = "small-parts-02", amount = 1},
        {type = "item",  name = "steel-plate",    amount = 1}, --supersteel
        {type = "item",  name = "plastic-bar",    amount = 5},
        {type = "item",  name = "rubber",         amount = 2},
        {type = "item",  name = "belt",           amount = 2},
        {type = "item",  name = "nenbit-matrix",  amount = 1},
        {type = "fluid", name = "lubricant",      amount = 15},
    },
    results = {
        {type = "item", name = "small-parts-03", amount = 3},
    },
    main_product = "small-parts-03",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/small-parts-03.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("small-parts-mk03")

RECIPE {
    type = "recipe",
    name = "belt",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "rubber", amount = 2},
    },
    results = {
        {type = "item", name = "belt", amount = 1},
    },
    main_product = "belt",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/belt.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "rubber-01",
    category = "hor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "polybutadiene", amount = 50},
        {type = "item",  name = "carbon-black",  amount = 2},
    },
    results = {
        {type = "item", name = "rubber", amount = 1},
    },
    main_product = "rubber",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "rubber-02",
    category = "hor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "polybutadiene",   amount = 50},
        {type = "fluid", name = "organic-solvent", amount = 50},
        {type = "item",  name = "carbon-black",    amount = 2},
    },
    results = {
        {type = "item", name = "rubber", amount = 4},
    },
    main_product = "rubber",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber-2")

RECIPE {
    type = "recipe",
    name = "rubber-03",
    category = "hor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "polybutadiene", amount = 50},
        {type = "fluid", name = "styrene",       amount = 50},
        {type = "item",  name = "carbon-black",  amount = 3},
    },
    results = {
        {type = "item", name = "rubber", amount = 10},
    },
    main_product = "rubber",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber-3")

-- LOW DISTILLATE --

RECIPE {
    type = "recipe",
    name = "kevlar-2",
    category = "upgrader",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item",  name = "ppd",                amount = 5},
        {type = "fluid", name = "tpa",                amount = 100},
        {type = "fluid", name = "sulfuric-acid",      amount = 50},
        {type = "fluid", name = "industrial-solvent", amount = 50}
    },
    results = {
        {type = "item", name = "kevlar", amount = 5}
    },
    main_product = "kevlar"
}:add_unlock("kevlar-mk02"):replace_ingredient("sulfuric-acid", "dms")

--hidden recipe for oil derricks
RECIPE {
    type = "recipe",
    name = "drilling-fluids",
    category = "drilling-fluid",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/drilling-fluid-1.png",
    icon_size = 64,
    enabled = false,
    hidden = true,
    energy_required = 250,
    ingredients = {
        {type = "fluid", name = "drilling-fluid-0", amount = 100},
        {type = "fluid", name = "drilling-fluid-1", amount = 100},
        {type = "fluid", name = "drilling-fluid-2", amount = 100},
        {type = "fluid", name = "drilling-fluid-3", amount = 100},
    },
    results = {
        {type = "item", name = "soil", amount = 1},
    },
    subgroup = "py-petroleum-handling-recipes",
    ignore_for_dependencies = true,
    order = "a"
}

--ground boring kerogen

RECIPE {
    type = "recipe",
    name = "mining-kerogen",
    category = "ground-borer",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "lubricant",        amount = 100},
        {type = "fluid", name = "drilling-fluid-1", amount = 100},
        {type = "item",  name = "drill-head",       amount = 1}
    },
    results = {
        {type = "item", name = "kerogen", amount = 20}
    },
    main_product = "kerogen",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/drilling-kerogen.png",
    icon_size = 64,
    subgroup = "py-drilling",
    order = "c"
}:add_unlock("excavation-2")

--shale oil to crude?
