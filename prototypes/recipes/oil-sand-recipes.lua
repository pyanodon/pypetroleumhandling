RECIPE {
    type = "recipe",
    name = "crush-oil-sand",
    category = "crusher",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "oil-sand", amount = 3}
    },
    results = {
        {type = "item", name = "crushed-oil-sand", amount = 1},
        {type = "item", name = "stone", amount = 1, probability = 0.5}
    },
    main_product = "crushed-oil-sand",
    icon = "__pypetroleumhandling__/graphics/icons/crusher-oil-sand.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-oil-sand-recipes",
    order = "a"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "bitumen-to-oil",
    category = "hor",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 100},
    },
    main_product = "crude-oil",
    icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-oil-sand-recipes",
    order = "a"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "bitumen-to-oil2",
    category = "upgrader",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
        {type = "item", name = "chromium", amount = 2},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 150},
    },
    main_product = "crude-oil",
    icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-oil-sand-recipes",
    order = "a"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "bitumen-to-tar",
    category = "hor",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
    },
    results = {
        {type = "fluid", name = "tar", amount = 100},
    },
    main_product = "tar",
    icon = "__pycoalprocessing__/graphics/icons/tar.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-oil-sand-recipes",
    order = "a"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "bitumen-to-sulfur",
    category = "upgrader",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
        {type = "fluid", name = "water", amount = 200},
    },
    results = {
        {type = "item", name = "sulfur", amount = 10},
    },
    main_product = "sulfur",
    icon = "__base__/graphics/icons/sulfur.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-oil-sand-recipes",
    order = "a"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "bitumen-to-heavy-oil",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
        {type = "fluid", name = "water", amount = 200},
        {type = "item", name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "heavy-oil", amount = 100},
    },
    main_product = "heavy-oil",
    icon = "__base__/graphics/icons/fluid/heavy-oil.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-sands")

