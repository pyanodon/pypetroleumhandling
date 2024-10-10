RECIPE {
    type = "recipe",
    name = "guar-01",
    category = "guar",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "water", amount = 200},
        {type = "item",  name = "sand",  amount = 8},
        {type = "item",  name = "soil",  amount = 8},
    },
    results = {
        {type = "item", name = "guar", amount = 5},
    },
    main_product = "guar",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("guar")

RECIPE {
    type = "recipe",
    name = "guar-02",
    category = "guar",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "water",      amount = 1000},
        {type = "item",  name = "ash",        amount = 50},
        {type = "item",  name = "small-lamp", amount = 2},
        {type = "item",  name = "soil",       amount = 40},
    },
    results = {
        {type = "item", name = "guar", amount = 30},
    },
    main_product = "guar",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "guar-03",
    category = "guar",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "water",          amount = 1000},
        {type = "fluid", name = "carbon-dioxide", amount = 900},
        {type = "item",  name = "sand",           amount = 40},
        {type = "item",  name = "small-lamp",     amount = 1},
        {type = "item",  name = "soil",           amount = 40},
    },
    results = {
        {type = "item", name = "guar", amount = 30},
    },
    main_product = "guar",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "guar-separation",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "guar", amount = 10},
    },
    results = {
        {type = "item", name = "guar-seeds", amount = 50},
        {type = "item", name = "organics",   amount = 10},
    },
    main_product = "guar-seeds",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("guar")

RECIPE {
    type = "recipe",
    name = "guar-gum",
    category = "ball-mill",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "guar-seeds",  amount = 150},
        {type = "item", name = "plastic-bar", amount = 1},
    },
    results = {
        {type = "item", name = "guar-gum", amount = 3},
    },
    main_product = "guar-gum",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("guar").category = "pulp"
