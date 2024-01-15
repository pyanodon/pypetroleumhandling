RECIPE {
    type = "recipe",
    name = "transport-belt-2",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 5},
        {type = "item", name = "small-parts-01", amount = 3},
        {type = "item", name = "belt", amount = 5},
    },
    results = {
        {type = "item", name = "transport-belt", amount = 15},
    },
    main_product = "transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "s"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "fast-transport-belt-2",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "transport-belt", amount = 15},
        {type = "item", name = "small-parts-02", amount = 7},
        {type = "item", name = "belt", amount = 10},
    },
    results = {
        {type = "item", name = "fast-transport-belt", amount = 15},
    },
    main_product = "fast-transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "s"
}:add_unlock("logistics-2"):add_ingredient({type = "item", name = "stainless-steel", amount = 20})

RECIPE {
    type = "recipe",
    name = "express-transport-belt-2",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "fast-transport-belt", amount = 15},
        {type = "item", name = "small-parts-03", amount = 7},
        {type = "item", name = "belt", amount = 15},
        {type = "fluid", name = "lubricant", amount = 50},
    },
    results = {
        {type = "item", name = "express-transport-belt", amount = 15},
    },
    main_product = "express-transport-belt",
    subgroup = "py-petroleum-handling-recipes",
    order = "s"
}:add_unlock("logistics-3"):add_ingredient({type = "item", name = "super-steel", amount = 20}):add_ingredient({type = "item", name = "super-alloy", amount = 5})

RECIPE {
    type = "recipe",
    name = "engine-unit-2",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 5},
        {type = "item", name = "pipe", amount = 10},
        {type = "item", name = "small-parts-01", amount = 50},
        {type = "item", name = "belt", amount = 4},
    },
    results = {
        {type = "item", name = "engine-unit", amount = 3},
    },
    main_product = "engine-unit",
    subgroup = "py-petroleum-handling-recipes",
    order = "r"
}:add_unlock("rubber"):replace_ingredient("steel-plate", "duralumin")

RECIPE {
    type = "recipe",
    name = "fast-inserter-2",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "steel-plate", amount = 15},
        {type = "item", name = "small-parts-02", amount = 10},
        {type = "item", name = "belt", amount = 5},
        {type = "item", name = "inserter", amount = 5},
        {type = "fluid", name = "lubricant", amount = 200},
    },
    results = {
        {type = "item", name = "fast-inserter", amount = 15},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "r"
}:add_unlock("fast-inserter-2")

RECIPE {
    type = "recipe",
    name = "long-handed-inserter-2",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 2},
        {type = "item", name = "small-parts-02", amount = 1},
        {type = "item", name = "electronic-circuit", amount = 3},
        {type = "item", name = "belt", amount = 2},
        {type = "item", name = "inserter", amount = 5},
        {type = "fluid", name = "lubricant", amount = 200},
    },
    results = {
        {type = "item", name = "long-handed-inserter", amount = 15},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "r"
}:add_unlock("fast-inserter-2"):replace_ingredient("steel-plate", "duralumin")

RECIPE {
    type = "recipe",
    name = "stack-inserter-2",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "advanced-circuit", amount = 5},
        {type = "item", name = "electric-engine-unit", amount = 5},
        {type = "item", name = "small-parts-03", amount = 5},
        {type = "item", name = "belt", amount = 5},
        {type = "item", name = "fast-inserter", amount = 5},
        {type = "fluid", name = "lubricant", amount = 200},
    },
    results = {
        {type = "item", name = "stack-inserter", amount = 15},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "r"
}:add_unlock("stack-inserter-2"):replace_ingredient("steel-plate", "titanium-plate")
