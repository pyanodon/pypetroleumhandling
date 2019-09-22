--TECHNOLOGY--

RECIPE('vacuum'):remove_unlock('diamond-mining'):set_enabled(true)

--BUILDINDS--

RECIPE("oil-sand-extractor-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agitator-mk01", amount = 1})
RECIPE("oil-sand-extractor-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("heavy-oil-refinery-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("heavy-oil-refinery-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("upgrader-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("upgrader-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE("reformer-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 1}):add_ingredient({type = "item", name = "boron-carbide", amount = 15})
RECIPE("reformer-mk04"):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("cracker-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("cracker-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("tholin-atm-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("tholin-atm-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("oil-derrick-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("oil-derrick-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 15}):add_ingredient({type = "item", name = "wall-shield", amount = 8}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("pumpjack-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE("pumpjack-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("tholin-plant-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("tholin-plant-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 3}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("lor-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("lor-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("coalbed-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("coalbed-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("fracking-rig"):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("retorter"):add_ingredient({type = "item", name = "control-unit", amount = 10}):add_ingredient({type = "item", name = "super-alloy", amount = 20})

RECIPE("automated-screener-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("bio-reactor"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("centrifugal-pan-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10}):replace_ingredient("advanced-circuit", "electronic-circuit")
RECIPE("diamond-mine"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE("gas-separator-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("grease-table-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("py-heat-exchanger"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("jig-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("nmf-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("secondary-crusher-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("thickener-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10}):replace_ingredient("electric-engine-unit", "engine-unit")
RECIPE("xyhiphoe-pool-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})

--pyfusion mk02

RECIPE('vacuum-pump-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE('agitator-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('thickener-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('hydrocyclone-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('mixer-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('automated-screener-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('secondary-crusher-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('centrifugal-pan-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('jig-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('grease-table-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('compressor-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('gas-separator-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE('nmf-mk02'):add_ingredient({type = "item", name = "small-parts-01", amount = 10})

----RECIPES----

RECIPE("agzn-alloy"):remove_unlock('fusion-mk03'):add_unlock('oil-sands')
RECIPE("scrude-to-natural-gas"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})
RECIPE("scrude-to-light-oil"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})
RECIPE("carbon-black"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})
RECIPE("carbon-black-2"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})
RECIPE("small-parts-03"):replace_ingredient("lubricant", "grease")
RECIPE("mining-molybdenum"):replace_ingredient("coal-gas", "gasoline"):replace_ingredient("lubricant", "drilling-fluid-3")

----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "bitumen-to-vanadium",
    category = "upgrader",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 4000},
        {type = "item", name = "agzn-alloy", amount = 1},
    },
    results = {
        {type = "item", name = "vanadium-oxide", amount = 1},
    },
    main_product = "vanadium-oxide",
    icon = "__pyfusionenergy__/graphics/icons/vanadium-oxide.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "a"
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "tar-to-vanadium",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 4000},
        {type = "item", name = "agzn-alloy", amount = 2},
    },
    results = {
        {type = "item", name = "vanadium-oxide", amount = 1},
    },
    main_product = "vanadium-oxide",
    icon = "__pyfusionenergy__/graphics/icons/vanadium-oxide.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "a"
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "tholin-to-deuterium",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 400},
    },
    results = {
        {type = "fluid", name = "deuterium", amount = 15},
    },
    icon = "__pyfusionenergy__/graphics/icons/deuterium.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "e"
}:add_unlock("tholin-mk04")

RECIPE {
    type = "recipe",
    name = "tholin-to-helium3",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 400},
    },
    results = {
        {type = "fluid", name = "helium3", amount = 5},
    },
    icon = "__pyfusionenergy__/graphics/icons/helium3.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "e"
}:add_unlock("tholin-mk04")

RECIPE {
    type = "recipe",
    name = "methane-to-methanol2",
    category = "methanol",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 100},
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
    name = "methane-to-methanol3",
    category = "methanol",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 100},
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

RECIPE {
    type = "recipe",
    name = "low-distillate-to-grease",
    category = "hor",
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "low-distillate", amount = 100},
        {type = "fluid", name = "lubricant", amount = 100},
        {type = "item", name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "grease", amount = 100},
    },
    main_product = "grease",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("oil-machines-mk03"):replace_ingredient("chromium", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "kerogen-3",
    category = "kerogen",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "hot-air", amount = 1000},
        {type = "fluid", name = "vacuum", amount = 500},
        {type = "item", name = "coke", amount = 10},
        {type = "item", name = "super-alloy", amount = 10},
    },
    results = {
        {type = "item", name = "kerogen", amount = 200},
    },
    main_product = "kerogen",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("kerogen")