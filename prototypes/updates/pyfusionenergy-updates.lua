--TECHNOLOGY--

if mods["pyrawores"] or mods["pyhightech"] then
TECHNOLOGY("vanadium-processing"):remove_pack("chemical-science-pack")
end

if not mods['pyrawores'] then
    TECHNOLOGY("fluid-pressurization"):remove_pack("chemical-science-pack"):remove_pack("logistic-science-pack")
    RECIPE('centrifugal-pan-mk01'):remove_unlock('diamond-mining'):add_unlock("oil-sands")
    RECIPE("compressor-mk01"):remove_unlock("helium-processing"):remove_unlock("liquid-petroleum-processing"):remove_unlock("advanced-oil-processing"):add_unlock("fluid-processing-machines-2")
    RECIPE("py-heat-exchanger"):remove_unlock("fusion-mk01"):add_unlock("oil-machines-mk02")
end

if not mods.pyalienlife then TECHNOLOGY("xyhiphoe"):remove_pack("chemical-science-pack") end

RECIPE("xyhiphoe-pool-mk01"):replace_ingredient("advanced-circuit", "electronic-circuit")

RECIPE("filtration-media"):remove_unlock("filtration-mk02"):add_unlock("filtration")

RECIPE("xyhiphoe-hydrocyclone"):remove_unlock("xyhiphoe"):add_unlock("advanced-mining-facilities")

RECIPE('grease'):remove_unlock('diamond-mining'):add_unlock('small-parts-mk03')
RECIPE("methyl-acrylate"):add_ingredient{ type = "fluid", name = "ethylene-chlorohydrin", amount = 50 }

--vanadium tweaks

RECIPE("vpulp4"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("vpulp5"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("vpulp-precip"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("pressured-vpulp"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("vanadates"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("vanadium-solution"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("vanadium-concentrate"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("organic-vanadate"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("cobalt-solvent"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("solvent-separation"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("acid-strip-solution"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
RECIPE("pregnant-solution"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
if not mods["pyrawores"] then
    RECIPE("sodium-chlorate"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")
end
RECIPE("vanadium-oxide"):remove_unlock("vanadium-processing"):add_unlock("vanadium-processing-2")

RECIPE("vanabins"):replace_ingredient("sulfuric-acid", "acidgas")

--RECIPE("soda-ash"):remove_unlock("advanced-mining-facilities"):add_unlock("vanadium-processing")

RECIPE("vpulp3"):set_fields{results = {
    {type = "fluid", name = "vpulp3", amount = 50},
    {type = "item", name = "vanadium-oxide", amount = 2}
}}

RECIPE("vpulp5"):set_fields{results = {
    {type = "fluid", name = "vpulp5", amount = 100}
    }
}

--BUILDINDS--

--RECIPE("hydrocyclone-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("vanadium-processing")

RECIPE("oil-sand-extractor-mk03"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 10}):add_ingredient({type = "item", name = "agitator-mk01", amount = 1})
RECIPE("oil-sand-extractor-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("heavy-oil-refinery-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("heavy-oil-refinery-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("upgrader-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 15})
RECIPE("upgrader-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE("reformer-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10})--:add_ingredient({type = "item", name = "sc-unit", amount = 1})
RECIPE("reformer-mk04"):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5}):add_ingredient({type = "item", name = "boron-carbide", amount = 15})
RECIPE("cracker-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 15})
RECIPE("cracker-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("tholin-atm-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("tholin-atm-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("oil-derrick-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10})
RECIPE("oil-derrick-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "wall-shield", amount = 8}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("pumpjack-mk03"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 20})
RECIPE("pumpjack-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("tholin-plant-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 15})
RECIPE("tholin-plant-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 3}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("lor-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("lor-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("coalbed-mk03"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("coalbed-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("fracking-rig"):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
--RECIPE("retorter"):add_ingredient({type = "item", name = "control-unit", amount = 10}):add_ingredient({type = "item", name = "super-alloy", amount = 20})
RECIPE("chemical-plant-mk03"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 10}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("guar-gum-plantation-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 40}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 5}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("automated-screener-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50})
RECIPE("bio-reactor-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50})
RECIPE("centrifugal-pan-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50}):replace_ingredient("advanced-circuit", "electronic-circuit")
RECIPE("diamond-mine"):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "small-parts-03", amount = 50})

RECIPE("gas-separator-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50})

if not mods["pyhightech"] then
    if mods["pyrawores"] then
        if not mods["pyalienlife"] then
            RECIPE("gas-separator-mk01"):remove_unlock("coke-mk02"):add_unlock("sulfur-processing")
        end
    else
        RECIPE("gas-separator-mk01"):remove_unlock('helium-processing-mk02'):add_unlock("petroleum-gas-mk02")
    end
end

RECIPE("mixer-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("drilling-fluid-mk01")
RECIPE("grease-table-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50})
RECIPE("py-heat-exchanger"):add_ingredient({type = "item", name = "small-parts-01", amount = 50})
RECIPE("jig-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50})
RECIPE("nmf-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50})
RECIPE("secondary-crusher-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50})
RECIPE("thickener-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50}):replace_ingredient("electric-engine-unit", "engine-unit")
if not mods["pyrawores"] then
    RECIPE("thickener-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("vanadium-processing")
end
RECIPE("xyhiphoe-pool-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 50})
RECIPE("agitator-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("vanadium-processing")

--pyfusion mk02

RECIPE('vacuum-pump-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('agitator-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('thickener-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('hydrocyclone-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('mixer-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('automated-screener-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('secondary-crusher-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('plankton-farm-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('centrifugal-pan-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('jig-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('grease-table-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('compressor-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('gas-separator-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE('nmf-mk02'):add_ingredient({type = "item", name = "small-parts-02", amount = 50})
RECIPE("py-heat-exchanger-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 50})

--pyfusion mk03

RECIPE('vacuum-pump-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('agitator-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('thickener-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('hydrocyclone-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('mixer-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('automated-screener-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('secondary-crusher-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('plankton-farm-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('centrifugal-pan-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('jig-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('grease-table-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('compressor-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('gas-separator-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE('nmf-mk03'):add_ingredient({type = "item", name = "small-parts-03", amount = 50})
RECIPE("py-heat-exchanger-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 50})

----RECIPES----

if data.raw.recipe['scrude-to-natural-gas'] then RECIPE("scrude-to-natural-gas"):add_ingredient({type = "fluid", name = "vacuum", amount = 100}) end
if data.raw.recipe['scrude-to-light-oil'] then RECIPE("scrude-to-light-oil"):add_ingredient({type = "fluid", name = "vacuum", amount = 100}) end
RECIPE("carbon-black"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})
if data.raw.recipe['carbon-black-2'] then RECIPE("carbon-black-2"):add_ingredient({type = "fluid", name = "vacuum", amount = 100}) end
RECIPE("small-parts-03"):replace_ingredient("lubricant", "grease")
RECIPE("mining-molybdenum"):replace_ingredient("coal-gas", "gasoline"):replace_ingredient("lubricant", "drilling-fluid-3")
RECIPE("mining-molybdenum"):remove_unlock("excavation-2"):add_unlock("excavation-3")

if mods['pyrawores'] then
    RECIPE("agzn-alloy"):remove_unlock('fusion-mk03'):add_unlock('alloys-mk04')

    if not mods["pyhightech"] then
        RECIPE("silver-foam"):remove_unlock('fusion-mk03'):add_unlock('alloys-mk04')
    end
end

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
    icon = "__pyfusionenergygraphics__/graphics/icons/vanadium-oxide.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "a"
}:add_unlock("heavy-oil-mk04")

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
    icon = "__pyfusionenergygraphics__/graphics/icons/vanadium-oxide.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "a"
}:add_unlock("heavy-oil-mk04")

RECIPE {
    type = "recipe",
    name = "methane-to-methanol2",
    category = "methanol",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 100},
        {type = "fluid", name = "hot-air", amount = 100},
        {type = "item", name = "nexelit-plate", amount = 1},
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
        {type = "item", name = "nexelit-plate", amount = 1},
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
}:add_unlock("heavy-oil-mk02"):replace_ingredient("chromium", "sncr-alloy")

RECIPE('grease-table-mk04'):add_unlock('oil-machines-mk04'):add_ingredient({'bose-einstein-superfluid', 50}):add_ingredient({type = 'item', name = 'harmonic-absorber', amount = 10}):add_ingredient({type = 'item', name = 'pi-josephson-junction', amount = 10}):add_ingredient{'intelligent-unit', 25}