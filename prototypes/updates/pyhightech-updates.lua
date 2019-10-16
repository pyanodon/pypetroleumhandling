require("prototypes.buildings.pumpjack-hightech")


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
RECIPE("tholin-atm-mk03"):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20})
RECIPE("tholin-atm-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "quantum-dots", amount = 5})
RECIPE("oil-derrick-mk03"):add_ingredient({type = "item", name = "phosphate-glass", amount = 15}):add_ingredient({type = "item", name = "heavy-fermion", amount = 10}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 10})
RECIPE("oil-derrick-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 6}):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 4})
RECIPE("pumpjack-mk03"):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20})
RECIPE("pumpjack-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "quantum-dots", amount = 5})
RECIPE("tholin-plant-mk03"):add_ingredient({type = "item", name = "phosphate-glass", amount = 50}):add_ingredient({type = "item", name = "biopolymer", amount = 35}):add_ingredient({type = "item", name = "aerogel", amount = 15})
RECIPE("tholin-plant-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 4})
RECIPE("lor-mk03"):add_ingredient({type = "item", name = "heavy-fermion", amount = 20}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20}):add_ingredient({type = "item", name = "graphene-roll", amount = 15})
RECIPE("lor-mk04"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 10})
RECIPE("coalbed-mk03"):add_ingredient({type = "item", name = "biopolymer", amount = 40}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 30}):add_ingredient({type = "item", name = "graphene-roll", amount = 10})
RECIPE("coalbed-mk04"):add_ingredient({type = "item", name = "carbon-aerogel", amount = 10}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 10})
RECIPE("fracking-rig"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 20})
RECIPE("retorter"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "heavy-fermion", amount = 20}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20}):add_ingredient({type = "item", name = "graphene-roll", amount = 15})

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
RECIPE("chloroethanol"):replace_ingredient("methanol", "ethylene")
RECIPE("pure-natural-gas"):replace_ingredient("active-carbon", "colloidal-silica")
RECIPE("drilling-fluid-3"):add_ingredient({type = "item", name = "collagen", amount = 2})
RECIPE("small-parts-02"):add_ingredient({type = "item", name = "nylon", amount = 1})


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
        {type = "fluid", name = "methane", amount = 80},
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

RECIPE {
    type = "recipe",
    name = "rubber-04",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "polybutadiene", amount = 50},
        {type = "fluid", name = "styrene", amount = 50},
        {type = "fluid", name = "dms", amount = 30},
        {type = "item", name = "carbon-black", amount = 3},
    },
    results = {
        {type = "item", name = "rubber", amount = 40},
    },
    main_product = "rubber",
    icon = "__pypetroleumhandling__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("advanced-electronics")

RECIPE {
    type = "recipe",
    name = "btx-to-benzene",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "btx", amount = 100},
        {type = "fluid", name = "steam", amount = 200, temperature = 165},
        {type = "item", name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "benzene", amount = 200},
    },
    main_product = "benzene",
    icon = "__pyhightech__/graphics/icons/benzene.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("oil-processing")

RECIPE {
    type = "recipe",
    name = "btx-to-ethylene",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "btx", amount = 100},
        {type = "fluid", name = "steam", amount = 200, temperature = 165},
        {type = "item", name = "nexelit-plate", amount = 1}, --lead plate
    },
    results = {
        {type = "fluid", name = "ethylene", amount = 100},
    },
    main_product = "ethylene",
    icon = "__pyhightech__/graphics/icons/ethylene.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("oil-processing")

RECIPE {
    type = "recipe",
    name = "btx-to-methane",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "btx", amount = 200},
        {type = "fluid", name = "steam", amount = 450, temperature = 165},
        {type = "item", name = "nexelit-plate", amount = 1}, --lead plate
    },
    results = {
        {type = "fluid", name = "methane", amount = 300},
    },
    main_product = "methane",
    icon = "__pyhightech__/graphics/icons/methane.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("oil-processing")

RECIPE {
    type = "recipe",
    name = "tholin-to-cyanic-acid",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "cyanic-acid", amount = 40},
    },
    icon = "__pyhightech__/graphics/icons/cyanic-acid.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "c"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-ethylene",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "ethylene", amount = 40},
    },
    icon = "__pyhightech__/graphics/icons/ethylene.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "c"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-benzene",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "benzene", amount = 40},
    },
    icon = "__pyhightech__/graphics/icons/benzene.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "c"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-ammonia",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "ammonia", amount = 40},
    },
    icon = "__pyhightech__/graphics/icons/ammonia.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "c"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-methane",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "methane", amount = 30},
    },
    icon = "__pyhightech__/graphics/icons/methane.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "c"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-acetone",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "acetone", amount = 25},
    },
    icon = "__pyhightech__/graphics/icons/acetone.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "d"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-methanal",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "methanal", amount = 25},
    },
    icon = "__pyhightech__/graphics/icons/methanal.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "d"
}:add_unlock("tholin-mk03")

RECIPE {
    type = "recipe",
    name = "tholin-to-propene",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "propene", amount = 20},
    },
    icon = "__pyhightech__/graphics/icons/propene.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "d"
}:add_unlock("tholin-mk03")

RECIPE {
    type = "recipe",
    name = "processed-light-oil-to-benzene",
    category = "reformer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "processed-light-oil", amount = 250},
        {type = "item", name = "nichrome", amount = 1},
    },
    results = {
        {type = "fluid", name = "benzene", amount = 375},
    },
    --main_product = "styrene",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("light-oil-mk02")

RECIPE {
    type = "recipe",
    name = "extract-methane-from-coalbed",
    category = "coalbed",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "steam", amount = 2500, temperature = 500}, --pressured-water
        {type = "item", name = "drill-head", amount = 2},
        {type = "item", name = "filtration-media", amount = 1},
    },
    results = {
        {type = "fluid", name = "methane", amount = 300},
        {type = "fluid", name = "water", amount = 2500},
    },
    main_product = "methane",
    icon = "__pyhightech__/graphics/icons/methane.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coalbed-mk02"):replace_ingredient("steam", "pressured-water")

RECIPE {
    type = "recipe",
    name = "extract-methane-from-coalbed-2",
    category = "coalbed",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "steam", amount = 2500, temperature = 500}, --pressured-water
        {type = "fluid", name = "carbon-dioxide", amount = 500},
        {type = "item", name = "drill-head", amount = 1},
        {type = "item", name = "filtration-media", amount = 1},
    },
    results = {
        {type = "fluid", name = "methane", amount = 500},
        {type = "fluid", name = "water", amount = 2500},
    },
    main_product = "methane",
    icon = "__pyhightech__/graphics/icons/methane.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coalbed-mk02"):replace_ingredient("steam", "pressured-water")

RECIPE {
    type = "recipe",
    name = "residual-gas-to-propene",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "residual-gas", amount = 100},
        {type = "item", name = "nichrome", amount = 1},
    },
    results = {
        {type = "fluid", name = "propene", amount = 200},
    },
    main_product = "propene",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk03")

RECIPE {
    type = "recipe",
    name = "guar-04",
    category = "guar",
    enabled = false,
    energy_required = 18,
    ingredients = {
        {type = "fluid", name = "water", amount = 200},
        {type = "fluid", name = "carbon-dioxide", amount = 200},
        {type = "item", name = "sand", amount = 8},
        {type = "item", name = "small-lamp", amount = 1},
        {type = "item", name = "clay", amount = 8},
    },
    results = {
        {type = "item", name = "guar", amount = 8},
    },
    main_product = "guar",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "guar-05",
    category = "guar",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water", amount = 200},
        {type = "fluid", name = "carbon-dioxide", amount = 200},
        {type = "item", name = "py-fertilizer", amount = 2},
        {type = "item", name = "small-lamp", amount = 1},
        {type = "item", name = "soil", amount = 8},
    },
    results = {
        {type = "item", name = "guar", amount = 10},
    },
    main_product = "guar",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "naphtha-2-tall-oil",
    category = "lor",
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "naphtha", amount = 150},
    },
    results = {
        {type = "fluid", name = "tall-oil", amount = 100},
    },
    main_product = "tall-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk01")

RECIPE {
    type = "recipe",
    name = "stripped-distillate-to-cumene",
    category = "lor",
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "stripped-distillate", amount = 100},
        {type = "item", name = "ticl4", amount = 1},
    },
    results = {
        {type = "fluid", name = "cumene", amount = 200},
    },
    main_product = "cumene",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk03")

RECIPE {
    type = "recipe",
    name = "stripped-distillate-to-benzene",
    category = "lor",
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "stripped-distillate", amount = 100},
        {type = "item", name = "sncr-alloy", amount = 1},
    },
    results = {
        {type = "fluid", name = "benzene", amount = 150},
    },
    main_product = "benzene",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk03")


if mods["pyfusionenergy"] then

	RECIPE("scrude-to-methane"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})
	RECIPE("extract-ammonia-scrude"):replace_ingredient("nichrome", "molybdenum-plate")

    RECIPE {
        type = "recipe",
        name = "methane-to-methanol7",
        category = "methanol",
        enabled = false,
        energy_required = 6,
        ingredients = {
            {type = "fluid", name = "methane", amount = 100},
            {type = "fluid", name = "hot-air", amount = 100},
            {type = "item", name = "molybdenum-plate", amount = 1},
        },
        results = {
            {type = "fluid", name = "methanol", amount = 200},
        },
        subgroup = "py-petroleum-handling-recipes",
        order = "a"
    }:add_unlock("methanol-processing-2")

    RECIPE {
        type = "recipe",
        name = "methane-to-methanol8",
        category = "methanol",
        enabled = false,
        energy_required = 6,
        ingredients = {
            {type = "fluid", name = "methane", amount = 100},
            {type = "fluid", name = "hot-air", amount = 100},
            {type = "item", name = "molybdenum-plate", amount = 1},
            {type = "item", name = "vanadium-oxide", amount = 1},
        },
        results = {
            {type = "fluid", name = "methanol", amount = 400},
        },
        subgroup = "py-petroleum-handling-recipes",
        order = "a"
    }:add_unlock("methanol-processing-2")

end

RECIPE {
    type = "recipe",
    name = "methane-to-methanol5",
    category = "methanol",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "methane", amount = 100},
        {type = "fluid", name = "hot-air", amount = 100},
        {type = "item", name = "nichrome", amount = 1},
    },
    results = {
        {type = "fluid", name = "methanol", amount = 150},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("methanol-processing-1"):replace_ingredient("nichrome", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "methane-to-methanol6",
    category = "methanol",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "methane", amount = 400},
        {type = "fluid", name = "hot-air", amount = 100},
        {type = "item", name = "copper-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "methanol", amount = 300},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("methanol-processing-1"):add_ingredient({type = "item", name = "ticl4", amount = 2})

RECIPE {
    type = "recipe",
    name = "natural-gas-to-methane",
    category = "carbonfilter",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 400},
        {type = "item", name = "sncr-alloy", amount = 1},
    },
    results = {
        {type = "fluid", name = "methane", amount = 400},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-machines-mk03")