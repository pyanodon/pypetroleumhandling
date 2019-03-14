----BUILDINDS----

RECIPE("oil-sand-extractor-mk03"):add_ingredient({type = "item", name = "diamagnetic-material", amount = 20}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 15})
RECIPE("oil-sand-extractor-mk04"):add_ingredient({type = "item", name = "nems", amount = 5}):add_ingredient({type = "item", name = "graphene-roll", amount = 15}):add_ingredient({type = "item", name = "intelligent-unit", amount = 5})
RECIPE("heavy-oil-refinery-mk03"):add_ingredient({type = "item", name = "heavy-fermion", amount = 20}):add_ingredient({type = "item", name = "diamagnetic-material", amount = 10}):add_ingredient({type = "item", name = "graphene-roll", amount = 15})
RECIPE("heavy-oil-refinery-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "var-josephson-junction", amount = 10})
RECIPE("upgrader-mk03"):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20})
RECIPE("upgrader-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "nv-center", amount = 2})


----RECIPES----

RECIPE("scrude-to-crude-oil"):add_ingredient({type = "fluid", name = "propene", amount = 50})

----EXCLUSIVE RECIPES----


RECIPE {
    type = "recipe",
    name = "scrude-to-methane",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100}, --add vacuum
        {type = "item", name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "methane", amount = 70},
    },
    main_product = "methane",
    icon = "__pyhightech__/graphics/icons/methane.png",
    icon_size = 32,
    subgroup = "py-hightech-fluids",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "extract-ammonia-scrude",
    category = "desulfurization",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "item", name = "nichrome", amount = 1}, --mo plate
    },
    results = {
        {type = "fluid", name = "ammonia", amount = 100},
        {type = "item", name = "sulfur", amount = 1},
    },
    main_product = "ammonia",
    icon = "__pyhightech__/graphics/icons/ammonia.png",
    icon_size = 32,
    subgroup = "py-hightech-fluids",
    order = "a"
}:add_unlock("scrude")