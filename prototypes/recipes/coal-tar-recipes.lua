
RECIPE {
    type = "recipe",
    name = "carbon-black",
    category = "reformer",
    --category = "distilator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "anthracene-oil", amount = 200},
        --{type = "fluid", name = "hot-air", amount = 25},
    },
    results = {
        {type = "item", name = "carbon-black", amount = 4},
    },
    main_product = "carbon-black",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/carbon-black.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "anthraquinone-from-anthracene",
    --category = "reformer",
    category = "distilator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "anthracene-oil", amount = 50},
        {type = "fluid", name = "sulfuric-acid", amount = 50},
        {type = "item", name = "chromite-sand", amount = 5},
    },
    results = {
        {type = "fluid", name = "anthraquinone", amount = 10},
        {type = "fluid", name = "steam", amount = 50, temperature = 150},
    },
    main_product = "anthraquinone",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("coal-processing-3")

RECIPE {
    type = "recipe",
    name = "carbolic-oil-creosote",
    --category = "reformer",
    category = "tar",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "carbolic-oil", amount = 50},
    },
    results = {
        {type = "fluid", name = "creosote", amount = 50},
    },
    main_product = "creosote",
    subgroup = "py-petroleum-handling-recipes",
    order = "a",
    crafting_machine_tint =
    {
        primary = {r = 0.360, g = 0.250, b = 0.070},
        secondary = {r = 0.360, g = 0.250, b = 0.070},
        tertiary = {r = 0.360, g = 0.250, b = 0.070},
        quaternary = {r = 0.360, g = 0.250, b = 0.070},
    }
}:add_unlock("creosote")


RECIPE {
    type = "recipe",
    name = "stone-brick-2",
    category = "hpf",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "stone", amount = 5},
        {type = "fluid", name = "pitch", amount = 50},
    },
    results = {
        {type = "item", name = "stone-brick", amount = 4},
    },
    main_product = "stone-brick",
}:add_unlock('tar-processing')

--napathalene recipes

RECIPE {
    type = "recipe",
    name = "naphthalene-oil-creosote",
    --category = "reformer",
    category = "tar",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "naphthalene-oil", amount = 50},
    },
    results = {
        {type = "fluid", name = "creosote", amount = 30},
    },
    main_product = "creosote",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("wood-processing")

RECIPE {
    type = "recipe",
    name = "aromatics-from-naphthalene",
    --category = "reformer",
    category = "distilator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "naphthalene-oil", amount = 50},
        --{type = "fluid", name = "hot-air", amount = 25},
    },
    results = {
        {type = "fluid", name = "aromatics", amount = 30},
        {type = "item", name = "coke", amount = 3},
    },
    main_product = "aromatics",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("light-oil-mk01")

RECIPE {
    type = "recipe",
    name = "anthraquinone-from-naphthalene",
    category = "reformer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "naphthalene-oil", amount = 100},
        {type = "item", name = "vanadium-oxide", amount = 2},
    },
    results = {
        {type = "fluid", name = "anthraquinone", amount = 50},
    },
    main_product = "anthraquinone",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("sulfur-processing")

RECIPE {
    type = "recipe",
    name = "naphthalene-solvent",
    --category = "reformer",
    category = "distilator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "naphthalene-oil", amount = 100},
        {type = "fluid", name = "carbolic-oil", amount = 20},
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 30},
    },
    main_product = "organic-solvent",
    icon = "__pycoalprocessinggraphics__/graphics/icons/organic-solvent.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("organic-solvent")

RECIPE {
    type = "recipe",
    name = "light-oil-aromatics",
    --category = "reformer",
    category = "distilator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "light-oil", amount = 50},
    },
    results = {
        {type = "fluid", name = "aromatics", amount = 50},
        {type = "fluid", name = "gasoline", amount = 25},
    },
    main_product = "aromatics",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("tar-processing")