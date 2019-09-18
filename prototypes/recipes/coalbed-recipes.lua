RECIPE {
    type = "recipe",
    name = "minor-extract-gas-from-coalbed-3",
    category = "coalbed",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "steam", amount = 2500, temperature = 500}, --pressured-water
        {type = "fluid", name = "hot-air", amount = 500},
        {type = "item", name = "drill-head", amount = 1},
    },
    results = {
        {type = "fluid", name = "coalbed-gas", amount = 150},
        {type = "fluid", name = "water", amount = 2500},
    },
    main_product = "coalbed-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coalbed-mk01"):replace_ingredient("hot-air", "oxygen"):replace_ingredient("steam", "pressured-water")

RECIPE {
    type = "recipe",
    name = "extract-gas-from-coalbed-3",
    category = "coalbed",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "steam", amount = 2500, temperature = 500}, --pressured-water
        {type = "fluid", name = "hot-air", amount = 500},
        {type = "item", name = "filtration-media", amount = 2},
    },
    results = {
        {type = "fluid", name = "coalbed-gas", amount = 250},
        {type = "fluid", name = "water", amount = 2500},
    },
    main_product = "coalbed-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coalbed-mk02"):replace_ingredient("hot-air", "oxygen"):replace_ingredient("steam", "pressured-water")

RECIPE {
    type = "recipe",
    name = "extract-gas-from-coalbed-4",
    category = "coalbed",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "steam", amount = 2500, temperature = 500}, --pressured-water
        {type = "fluid", name = "hot-air", amount = 500},
        {type = "item", name = "drill-head", amount = 1},
        {type = "item", name = "filtration-media", amount = 2},
    },
    results = {
        {type = "fluid", name = "coalbed-gas", amount = 500},
        {type = "fluid", name = "water", amount = 2500},
    },
    main_product = "coalbed-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coalbed-mk02"):replace_ingredient("hot-air", "oxygen"):replace_ingredient("steam", "pressured-water")

RECIPE {
    type = "recipe",
    name = "coalbed-gas-to-syngas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "coalbed-gas", amount = 200},
        {type = "fluid", name = "hot-air", amount = 500},
        {type = "item", name = "active-carbon", amount = 1},
    },
    results = {
        {type = "fluid", name = "syngas", amount = 200},
    },
    --main_product = "coalbed-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

RECIPE {
    type = "recipe",
    name = "coalbed-gas-to-co2",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "coalbed-gas", amount = 200},
        {type = "fluid", name = "hot-air", amount = 500},
        {type = "item", name = "active-carbon", amount = 1},
    },
    results = {
        {type = "fluid", name = "carbon-dioxide", amount = 300},
    },
    --main_product = "carbon-dioxide",
    icon = "__pycoalprocessing__/graphics/icons/carbon-dioxide.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

RECIPE {
    type = "recipe",
    name = "coalbed-gas-to-acidgas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "coalbed-gas", amount = 200},
        {type = "fluid", name = "hot-air", amount = 500},
    },
    results = {
        {type = "fluid", name = "acidgas", amount = 300},
        {type = "fluid", name = "flue-gas", amount = 900},
    },
    main_product = "acidgas",
    icon = "__pycoalprocessing__/graphics/icons/acidgas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

RECIPE {
    type = "recipe",
    name = "coalbed-gas-to-refsyngas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "coalbed-gas", amount = 200},
        {type = "fluid", name = "hot-air", amount = 500},
        {type = "item", name = "filtration-media", amount = 1},
    },
    results = {
        {type = "fluid", name = "refsyngas", amount = 300},
    },
    main_product = "refsyngas",
    icon = "__pycoalprocessing__/graphics/icons/refsyngas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02")

RECIPE {
    type = "recipe",
    name = "refined-natural-gas-to-refsyngas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "refined-natural-gas", amount = 100},
        {type = "item", name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "refsyngas", amount = 50},
        {type = "fluid", name = "flue-gas", amount = 500},
    },
    main_product = "refsyngas",
    icon = "__pycoalprocessing__/graphics/icons/refsyngas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02")

RECIPE {
    type = "recipe",
    name = "natural-gas-to-syngas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 100},
    },
    results = {
        {type = "fluid", name = "syngas", amount = 50},
        {type = "fluid", name = "flue-gas", amount = 200},
    },
    main_product = "syngas",
    icon = "__pycoalprocessing__/graphics/icons/syngas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")