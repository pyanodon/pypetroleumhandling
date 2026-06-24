RECIPE {
    type = "recipe",
    name = "tholin-to-co2",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 36,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 25},
    },
    results = {
        {type = "fluid", name = "carbon-dioxide", amount = 500},
    },
    main_product = "carbon-dioxide",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "c"
}:add_unlock("tholin-mk01")

RECIPE {
    type = "recipe",
    name = "tholin-to-syngas",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "syngas", amount = 450},
    },
    main_product = "syngas",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "c"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-acetylene",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 24,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "acetylene", amount = 360},
    },
    main_product = "acetylene",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "c"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-acidgas",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 18,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "acidgas", amount = 240},
    },
    main_product = "acidgas",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "c"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-methanol",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 18,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "methanol", amount = 240},
    },
    main_product = "methanol",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "d"
}:add_unlock("tholin-mk03")

RECIPE {
    type = "recipe",
    name = "tholin-to-refsyngas",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 18,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "refsyngas", amount = 240},
    },
    main_product = "refsyngas",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "d"
}:add_unlock("tholin-mk03")

RECIPE {
    type = "recipe",
    name = "tholin-to-glycerol",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 18,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "glycerol", amount = 210},
    },
    main_product = "glycerol",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "e"
}:add_unlock("tholin-mk04")

RECIPE {
    type = "recipe",
    name = "tholin-to-olefins",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 18,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "olefin", amount = 210},
    },
    main_product = "olefin",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "e"
}:add_unlock("tholin-mk04")



RECIPE {
    type = "recipe",
    name = "tholin-to-deuterium",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 400},
    },
    results = {
        {type = "fluid", name = "deuterium", amount = 100},
    },
    main_product = "deuterium",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "e"
}:add_unlock("tholin-mk04")

RECIPE {
    type = "recipe",
    name = "tholin-to-helium3",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 400},
    },
    results = {
        {type = "fluid", name = "helium3", amount = 10},
    },
    main_product = "helium3",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "e"
}:add_unlock("tholin-mk04")

RECIPE {
    type = "recipe",
    name = "tholin-to-tritium",
    categories = {"tholin-plant"},
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 400},
    },
    results = {
        {type = "fluid", name = "tritium", amount = 10},
    },
    main_product = "tritium",
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "e"
}:add_unlock("tholin-mk04")
