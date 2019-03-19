RECIPE {
    type = "recipe",
    name = "bolts",
    category = "crafting",
    enabled = true,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 1},
    },
    results = {
        {type = "item", name = "bolts", amount = 2},
    },
    main_product = "bolts",
    icon = "__pypetroleumhandling__/graphics/icons/bolts.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}

RECIPE {
    type = "recipe",
    name = "small-parts-01",
    category = "crafting",
    enabled = true,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "iron-gear-wheel", amount = 1},
        {type = "item", name = "copper-plate", amount = 1},
        {type = "item", name = "bolts", amount = 2},
        {type = "item", name = "iron-stick", amount = 1},
    },
    results = {
        {type = "item", name = "small-parts-01", amount = 2},
    },
    main_product = "small-parts-01",
    icon = "__pypetroleumhandling__/graphics/icons/small-parts-01.png",
    icon_size = 32,
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
        {type = "item", name = "steel-plate", amount = 1},
        {type = "item", name = "belt", amount = 1},
        {type = "item", name = "bolts", amount = 10},
    },
    results = {
        {type = "item", name = "small-parts-02", amount = 1},
    },
    main_product = "small-parts-02",
    icon = "__pypetroleumhandling__/graphics/icons/small-parts-02.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk01")

RECIPE {
    type = "recipe",
    name = "small-parts-03",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 1},
        {type = "item", name = "small-parts-03", amount = 1},
        {type = "item", name = "steel-plate", amount = 1}, --supersteel
        {type = "item", name = "plastic-bar", amount = 4},
        {type = "item", name = "iron-stick", amount = 3},
        {type = "item", name = "rubber", amount = 1},
    },
    results = {
        {type = "item", name = "small-parts-03", amount = 1},
    },
    main_product = "small-parts-03",
    icon = "__pypetroleumhandling__/graphics/icons/small-parts-03.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "belt",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "rubber", amount = 1},
    },
    results = {
        {type = "item", name = "belt", amount = 2},
    },
    main_product = "belt",
    icon = "__pypetroleumhandling__/graphics/icons/belt.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("rubber")

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
    subgroup = "py-petroleum-handling-recipes",
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
    subgroup = "py-petroleum-handling-scrude-recipes",
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
    subgroup = "py-petroleum-handling-scrude-recipes",
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
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "scrude-to-crude-oil",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "fluid", name = "steam", amount = 400, temperature = 165},
        --propene
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 120},
        {type = "fluid", name = "bitumen", amount = 20},
    },
    main_product = "crude-oil",
    icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "scrude-to-naphta",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "fluid", name = "water", amount = 1000},
    },
    results = {
        {type = "fluid", name = "naphtha", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 100},
    },
    main_product = "naphtha",
    icon = "__pypetroleumhandling__/graphics/icons/naphtha.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "heavy-oil-to-naphtha",
    category = "olefin",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "heavy-oil", amount = 100},
    },
    results = {
        {type = "fluid", name = "naphtha", amount = 70},
    },
    main_product = "naphtha",
    icon = "__pypetroleumhandling__/graphics/icons/naphtha.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "heavy-oil-to-gasoline",
    category = "olefin",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "heavy-oil", amount = 100},
        {type = "item", name = "nichrome", amount = 1}, -- Ticl4
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 70},
    },
    main_product = "gasoline",
    icon = "__pycoalprocessing__/graphics/icons/gasoline.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("energy-2")

RECIPE {
    type = "recipe",
    name = "extract-sulfur-scrude",
    category = "desulfurization",
    enabled = false,
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
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "carbon-black",
    category = "reformer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "tar", amount = 50},
        {type = "fluid", name = "hot-air", amount = 100},
    },
    results = {
        {type = "item", name = "carbon-black", amount = 1},
    },
    main_product = "carbon-black",
    icon = "__pypetroleumhandling__/graphics/icons/carbon-black.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "carbon-black-2",
    category = "reformer",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "crude-oil", amount = 50},
        {type = "fluid", name = "hot-air", amount = 100},
    },
    results = {
        {type = "item", name = "carbon-black", amount = 2},
    },
    main_product = "carbon-black",
    icon = "__pypetroleumhandling__/graphics/icons/carbon-black.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "rubber-01",
    category = "hor",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "polybutadiene", amount = 50},
        {type = "item", name = "carbon-black", amount = 2},
    },
    results = {
        {type = "item", name = "rubber", amount = 1},
    },
    main_product = "rubber",
    icon = "__pypetroleumhandling__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "rubber-02",
    category = "hor",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "polybutadiene", amount = 50},
        {type = "fluid", name = "organic-solvent", amount = 50},
        {type = "item", name = "carbon-black", amount = 2},
    },
    results = {
        {type = "item", name = "rubber", amount = 2},
    },
    main_product = "rubber",
    icon = "__pypetroleumhandling__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "tar-to-nafta",
    category = "fts-reactor",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "tar", amount = 1000},
        {type = "fluid", name = "water", amount = 1000},
        {type = "item", name = "chromium", amount = 1}, --ticl4
    },
    results = {
        {type = "fluid", name = "naphtha", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 100},
        {type = "fluid", name = "steam", amount = 1000, temperature = 60},
    },
    main_product = "naphtha",
    icon = "__pypetroleumhandling__/graphics/icons/naphtha.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "wood-to-nafta",
    category = "distilator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hot-air", amount = 100},
        {type = "item", name = "wood", amount = 12},
    },
    results = {
        {type = "fluid", name = "naphtha", amount = 20},
        {type = "fluid", name = "flue-gas", amount = 100},
    },
    main_product = "naphtha",
    icon = "__pypetroleumhandling__/graphics/icons/naphtha.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "nafta-to-aromatics",
    category = "reformer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "naphtha", amount = 100},
        {type = "item", name = "iron-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "aromatics", amount = 300},
    },
    main_product = "aromatics",
    icon = "__pycoalprocessing__/graphics/icons/aromatics.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

