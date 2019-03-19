----BUILDINDS----

RECIPE("oil-sand-extractor-mk03"):add_ingredient({type = "item", name = "diamagnetic-material", amount = 20}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 15})
RECIPE("oil-sand-extractor-mk04"):add_ingredient({type = "item", name = "nems", amount = 5}):add_ingredient({type = "item", name = "graphene-roll", amount = 15}):add_ingredient({type = "item", name = "intelligent-unit", amount = 5})
RECIPE("heavy-oil-refinery-mk03"):add_ingredient({type = "item", name = "heavy-fermion", amount = 20}):add_ingredient({type = "item", name = "diamagnetic-material", amount = 10}):add_ingredient({type = "item", name = "graphene-roll", amount = 15})
RECIPE("heavy-oil-refinery-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "var-josephson-junction", amount = 10})
RECIPE("upgrader-mk03"):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20})
RECIPE("upgrader-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "nv-center", amount = 2})
RECIPE("reformer-mk03"):add_ingredient({type = "item", name = "phosphate-glass", amount = 50}):add_ingredient({type = "item", name = "biopolymer", amount = 35}):add_ingredient({type = "item", name = "aerogel", amount = 15})
RECIPE("reformer-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 4})
RECIPE("cracker-mk03"):add_ingredient({type = "item", name = "re-magnet", amount = 30}):add_ingredient({type = "item", name = "superconductor", amount = 20}):add_ingredient({type = "item", name = "paramagnetic-material", amount = 15})
RECIPE("cracker-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 2})


RECIPE("cadaveric-arum"):add_ingredient({type = "item", name = "small-parts-02", amount = 15})
RECIPE("electronics-factory"):add_ingredient({type = "item", name = "small-parts-01", amount = 15})
RECIPE("fbreactor"):add_ingredient({type = "item", name = "small-parts-01", amount = 15})
RECIPE("kicalk-plantation"):add_ingredient({type = "item", name = "small-parts-01", amount = 15})
RECIPE("nano-assembler"):add_ingredient({type = "item", name = "small-parts-02", amount = 15})
RECIPE("particle-accelerator"):add_ingredient({type = "item", name = "small-parts-02", amount = 15})
RECIPE("pulp-mill"):add_ingredient({type = "item", name = "small-parts-01", amount = 15})

RECIPE("construction-robot-ht"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("logistic-robot-ht"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})


----RECIPES----

RECIPE("scrude-to-crude-oil"):add_ingredient({type = "fluid", name = "propene", amount = 50})
RECIPE("styrene"):replace_ingredient("syngas", "benzene"):replace_ingredient("aromatics", "ethylene"):change_category("fbreactor")


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