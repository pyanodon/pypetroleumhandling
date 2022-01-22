require("prototypes.fluids.pressured-hydrogen")
require("prototypes.recipes.hot-stone-brick-recipes")

--BUILDINDS--

RECIPE("oil-sand-extractor-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 15}):add_ingredient({type = "item", name = "nexelit-plate", amount = 5})
RECIPE("oil-sand-extractor-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("oil-sand-extractor-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE("oil-sand-extractor-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 20})
RECIPE("heavy-oil-refinery-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 10})--:add_ingredient({type = "item", name = "chromium", amount = 10})
RECIPE("heavy-oil-refinery-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("heavy-oil-refinery-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 25}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("heavy-oil-refinery-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 25})
RECIPE("upgrader-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 15}):add_ingredient({type = "item", name = "chromium", amount = 5})
RECIPE("upgrader-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE("upgrader-mk03"):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE("upgrader-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE("reformer-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 15}):add_ingredient({type = "item", name = "titanium-plate", amount = 5})
RECIPE("reformer-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("reformer-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE("reformer-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 20})
RECIPE("cracker-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 10}):add_ingredient({type = "item", name = "titanium-plate", amount = 10})
RECIPE("cracker-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("cracker-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 25}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("cracker-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 25})
RECIPE("tholin-atm-mk01"):add_ingredient({type = "item", name = "glass", amount = 15}):add_ingredient({type = "item", name = "nexelit-plate", amount = 5})
RECIPE("tholin-atm-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE("tholin-atm-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 25}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("tholin-atm-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 25})
RECIPE("oil-derrick-mk01"):add_ingredient({type = "item", name = "tin-plate", amount = 10})
RECIPE("oil-derrick-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("oil-derrick-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 30}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE("oil-derrick-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 45})
RECIPE("pumpjack-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "titanium-plate", amount = 20})
RECIPE("pumpjack-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 25}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE("pumpjack-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 25})
RECIPE("tholin-plant-mk01"):add_ingredient({type = "item", name = "glass", amount = 15}):add_ingredient({type = "item", name = "nexelit-plate", amount = 5})
RECIPE("tholin-plant-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE("tholin-plant-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 25}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE("tholin-plant-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 25})
RECIPE("lor-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 10}):add_ingredient({type = "item", name = "duralumin", amount = 10})
RECIPE("lor-mk02"):add_ingredient({type = "item", name = "nichrome", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 100})
RECIPE("lor-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE("lor-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 25})
RECIPE("coalbed-mk01"):add_ingredient({type = "item", name = "glass", amount = 50}):add_ingredient({type = "item", name = "nexelit-plate", amount = 5})
RECIPE("coalbed-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("coalbed-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 25}):add_ingredient({type = "item", name = "aluminium-plate", amount = 50})
RECIPE("coalbed-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE("tar-extractor-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 15}):add_ingredient({type = "item", name = "chromium", amount = 5})
RECIPE("tar-extractor-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE("tar-extractor-mk03"):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE("tar-extractor-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE("gas-refinery-mk01"):add_ingredient({type = "item", name = "glass", amount = 15}):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("gas-refinery-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE("gas-refinery-mk03"):add_ingredient({type = "item", name = "super-steel", amount = 25}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE("gas-refinery-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 25})
RECIPE("fracking-rig"):add_ingredient({type = "item", name = "super-steel", amount = 100})
RECIPE("retorter"):replace_ingredient("steel-plate", "super-steel"):add_ingredient({type = "item", name = "glass", amount = 120}):add_ingredient({type = "item", name = "nexelit-plate", amount = 50})
RECIPE("guar-gum-plantation-mk03"):add_ingredient({type = "item", name = "molybdenum-plate", amount = 20})
RECIPE("compressor-mk01"):remove_unlock('fluid-processing-machines-1'):add_unlock('fluid-processing-machines-2')
RECIPE('centrifugal-pan-mk01'):remove_unlock('fluid-processing-machines-1'):add_unlock('fluid-processing-machines-2')
RECIPE("evaporator"):remove_unlock('fluid-processing-machines-2'):add_unlock('fluid-processing-machines-1')


RECIPE("bof-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("casting-unit-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("eaf-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("electrolyzer-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("flotation-cell-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("hydroclassifier-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("impact-crusher-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("leaching-station-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("scrubber-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("wet-scrubber-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})

RECIPE("bof-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("casting-unit-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("eaf-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("electrolyzer-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("flotation-cell-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("hydroclassifier-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("impact-crusher-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("leaching-station-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("scrubber-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("wet-scrubber-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("py-logistic-robot-02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("py-construction-robot-02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})

RECIPE("bof-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("casting-unit-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("eaf-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("electrolyzer-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("flotation-cell-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("hydroclassifier-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("impact-crusher-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("leaching-station-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("scrubber-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("wet-scrubber-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})

RECIPE("chemical-plant-mk02"):remove_unlock('machines-mk03'):add_unlock('oil-machines-mk02')
RECIPE("chemical-plant-mk03"):remove_unlock('machines-mk04'):add_unlock('oil-machines-mk03')
RECIPE("chemical-plant-mk04"):remove_unlock('machines-mk05'):add_unlock('oil-machines-mk04')

--RECIPES--

RECIPE("oil-sand-slurry"):change_category("hydroclassifier")
RECIPE("bitumen"):change_category("flotation")
RECIPE("chloroethanol"):change_category("wet-scrubber")
RECIPE("ethylene-glycol"):change_category("scrubber")
RECIPE("py-tank-10000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("bitumen-to-oil"):add_ingredient({type = "fluid", name = "hydrogen", amount = 150})
RECIPE("bitumen-to-oil2"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100})
RECIPE("bitumen-to-scrude"):replace_ingredient("chromium", "sncr-alloy"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100})
RECIPE("tar-to-scrude"):replace_ingredient("chromium", "ticl4")
RECIPE("extract-sulfur-scrude"):replace_ingredient("copper-plate", "nickel-plate")
RECIPE("small-parts-02"):add_ingredient({type = "item", name = "duralumin", amount = 1}):add_ingredient({type = "item", name = "glass", amount = 1}):add_ingredient({type = "item", name = "titanium-plate", amount = 2}):add_ingredient({type = "item", name = "tin-plate", amount = 1}):replace_ingredient("steel-plate", "stainless-steel")
RECIPE("small-parts-03"):add_ingredient({type = "item", name = "aluminium-plate", amount = 2}):add_ingredient({type = "item", name = "glass", amount = 2}):add_ingredient({type = "item", name = "tin-plate", amount = 3}):replace_ingredient("steel-plate", "super-steel")
RECIPE("polybutadiene"):replace_ingredient("copper-plate", "titanium-plate")
RECIPE("heavy-oil-to-gasoline"):replace_ingredient("nichrome", "ticl4")
RECIPE("tar-to-nafta"):replace_ingredient("chromium", "ticl4")
RECIPE("rubber-03"):add_ingredient({type = "item", name = "salt", amount = 10})
RECIPE("btx-to-ethylene"):replace_ingredient("nexelit-plate", "lead-plate")
RECIPE("heavy-oil-to-natural-gas"):add_ingredient({type = "item", name = "nickel-plate", amount = 1})
RECIPE("processed-light-oil-to-olefins"):remove_ingredient("nichrome"):add_ingredient({type = "item", name = "titanium-plate", amount = 5})
RECIPE("processed-light-oil-to-light-oil"):remove_ingredient("nichrome"):add_ingredient({type = "item", name = "titanium-plate", amount = 5})
RECIPE("processed-light-oil-to-benzene"):remove_ingredient("nichrome"):add_ingredient({type = "item", name = "titanium-plate", amount = 5})
RECIPE("ethylene-chlorohydrin"):replace_ingredient("copper-plate", "silver-plate"):replace_ingredient("carbon-dioxide", "chlorine")
RECIPE("drilling-fluid-1"):add_ingredient({type = "item", name = "copper-ore", amount = 5})
RECIPE("drilling-fluid-2"):replace_ingredient("water", "hydrogen-chloride")
RECIPE("drilling-fluid-3"):add_ingredient({type = "item", name = "salt", amount = 20})
RECIPE("bitumen-gasification"):add_ingredient({type = "fluid", name = "oxygen", amount = 50})
RECIPE("kerogen-2"):remove_ingredient("niobium-pipe"):add_ingredient({type = "item", name = "super-steel", amount = 3})
RECIPE("mining-aluminium"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-2", amount = 100})
RECIPE("mining-chromium"):replace_ingredient("coal-gas", "syngas"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-2", amount = 150})
--RECIPE("mining-copper"):replace_ingredient("lubricant", "drilling-fluid-1")
RECIPE("mining-iron"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-1", amount = 150})
RECIPE("mining-lead"):replace_ingredient("coal-gas", "acetylene"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-1", amount = 100})
RECIPE("mining-nickel"):replace_ingredient("coal-gas", "syngas"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-2", amount = 150})
RECIPE("mining-tin"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-1", amount = 150}):replace_ingredient("coal-gas", "steam")
RECIPE("mining-titanium"):replace_ingredient("coal-gas", "acetylene"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-1", amount = 100})
RECIPE("mining-zinc"):replace_ingredient("coal-gas", "syngas"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-2", amount = 150})
RECIPE("hydrogen-chloride"):remove_unlock("coal-processing-2"):add_unlock("filtration")

--RECIPE('drilling-fluid-1'):add_ingredient({type = 'item', name = 'starch', amount = 4})
RECIPE('drilling-fluid-2'):add_ingredient({type = 'item', name = 'starch', amount = 4})
RECIPE('drilling-fluid-3'):add_ingredient({type = 'item', name = 'starch', amount = 4})

RECIPE('tar-quenching'):remove_unlock('fluid-separation'):add_unlock('nexelit-mk01')

RECIPE("methane-to-methanol2"):replace_ingredient("nexelit-plate", "molybdenum-plate")
RECIPE("methane-to-methanol3"):replace_ingredient("nexelit-plate", "molybdenum-plate")

RECIPE("bitumen-gasification"):remove_unlock("coal-processing-3"):add_unlock("oil-sands")
RECIPE("hot-syngas-cooldown"):remove_unlock("coal-processing-3"):add_unlock("oil-sands")

RECIPE("py-coal-tile"):remove_unlock("py-asphalt"):add_unlock("py-asphalt-mk02")


----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "sncr-alloy",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "chromium", amount = 3},
        {type = "item", name = "tin-plate", amount = 4},
    },
    results = {
        {type = "item", name = "sncr-alloy", amount = 2},
    },
    main_product = "sncr-alloy",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/sncr-alloy.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "a"
}:add_unlock("py-oil-processing-mk02")

RECIPE {
    type = "recipe",
    name = "sncr-alloy-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-tin", amount = 40},
        {type = "fluid", name = "molten-chromium", amount = 50},
        {type = "item", name = "sand-casting", amount = 4},
    },
    results = {
        {type = "item", name = "sncr-alloy", amount = 12}
    },
    main_product= "sncr-alloy",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/sncr-alloy.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("alloys")

RECIPE {
    type = "recipe",
    name = "bitumen-to-nickel",
    category = "upgrader",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
        {type = "fluid", name = "hydrogen", amount = 50},
    },
    results = {
        {type = "item", name = "ore-nickel", amount = 10},
    },
    main_product = "ore-nickel",
    icon = "__pyraworesgraphics__/graphics/icons/ore-nickel.png",
    icon_size = 32,
    subgroup = "py-rawores-nickel",
    order = "zaa"
}:add_unlock("oil-sands"):replace_ingredient("hydrogen", "propene")

RECIPE {
    type = "recipe",
    name = "bitumen-to-nitrogen",
    category = "upgrader",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 200},
    },
    main_product = "nitrogen",
    icon = "__pyraworesgraphics__/graphics/icons/nitrogen.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-oil-sand-recipes",
    order = "a"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "tar-to-nickel",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 500},
        {type = "fluid", name = "hydrogen", amount = 100},
    },
    results = {
        {type = "item", name = "ore-nickel", amount = 10},
    },
    main_product = "ore-nickel",
    icon = "__pyraworesgraphics__/graphics/icons/ore-nickel.png",
    icon_size = 32,
    subgroup = "py-rawores-nickel",
    order = "zaa"
}:add_unlock("py-oil-processing-mk01")

RECIPE {
    type = "recipe",
    name = "scrude-to-hydrogen",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100}, --add vacuum
        {type = "item", name = "sncr-alloy", amount = 1},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 800},
    },
    main_product = "hydrogen",
    icon = "__pyraworesgraphics__/graphics/icons/hydrogen.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})

RECIPE {
    type = "recipe",
    name = "extract-nitrogen-scrude",
    category = "desulfurization",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "item", name = "nickel-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 100},
        {type = "item", name = "sulfur", amount = 1},
    },
    main_product = "nitrogen",
    icon = "__pyraworesgraphics__/graphics/icons/nitrogen.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("desulfurization")

RECIPE {
    type = "recipe",
    name = "heavy-oil-to-kerosene",
    category = "olefin",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "heavy-oil", amount = 100},
    },
    results = {
        {type = "fluid", name = "kerosene", amount = 40},
    },
    main_product = "kerosene",
    icon = "__pyraworesgraphics__/graphics/icons/kerosene.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "ticl4",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "chlorine", amount = 40},
        {type = "item", name = "coal-dust", amount = 10},
        {type = "item", name = "titanium-plate", amount = 3},
    },
    results = {
        {type = "item", name = "ticl4", amount = 4},
    },
    main_product = "ticl4",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/ticl4.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("py-oil-processing-mk01")

RECIPE {
    type = "recipe",
    name = "plastic-bar-02",
    category = "cracker",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "naphtha", amount = 50}, -- propene
        {type = "item", name = "ticl4", amount = 2},
    },
    results = {
        {type = "item", name = "plastic-bar", amount = 5},
    },
    main_product = "plastic-bar",
    icon = "__base__/graphics/icons/plastic-bar.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("plastics-mk02"):replace_ingredient("naphtha", "propene"):change_category("fbreactor")

RECIPE {
    type = "recipe",
    name = "aromatics-to-petgas",
    category = "reformer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "aromatics", amount = 100},
        {type = "fluid", name = "hydrogen", amount = 100},
    },
    results = {
        {type = "fluid", name = "petroleum-gas", amount = 80},
    },
    main_product = "petroleum-gas",
    icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "naphtha-to-h2",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "naphtha", amount = 100},
        {type = "fluid", name = "steam", amount = 100},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 300},
    },
    main_product = "hydrogen",
    icon = "__pyraworesgraphics__/graphics/icons/hydrogen.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "btx-to-xylenol",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "btx", amount = 100},
        {type = "fluid", name = "steam", amount = 200},
        {type = "item", name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "xylenol", amount = 100},
    },
    main_product = "xylenol",
    icon = "__pyraworesgraphics__/graphics/icons/xylenol.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("machines-mk03")

RECIPE {
    type = "recipe",
    name = "tholin-to-nitrogen",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 100},
    },
    icon = "__pyraworesgraphics__/graphics/icons/nitrogen.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "b"
}:add_unlock("tholin-mk01")

RECIPE {
    type = "recipe",
    name = "tholin-to-chlorine",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "chlorine", amount = 80},
    },
    icon = "__pyraworesgraphics__/graphics/icons/chlorine.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "b"
}:add_unlock("tholin-mk02")

RECIPE {
    type = "recipe",
    name = "tholin-to-hydrogen",
    category = "tholin-plant",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "tholins", amount = 50},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 150},
    },
    icon = "__pyraworesgraphics__/graphics/icons/hydrogen.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "b"
}:add_unlock("tholin-mk01")

RECIPE {
    type = "recipe",
    name = "coalbed-gas-to-hydrogen",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "coalbed-gas", amount = 200},
        {type = "fluid", name = "hot-air", amount = 500},
        {type = "item", name = "active-carbon", amount = 1},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 300},
    },
    --main_product = "coalbed-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

RECIPE {
    type = "recipe",
    name = "scrubbing-purified-syngas",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "purified-syngas", amount = 100},
        {type = "fluid", name = "water", amount = 400},
    },
    results = {
        {type = "fluid", name = "hot-syngas", amount = 100},
        {type = "item", name = "soot", amount = 2},
    },
    main_product = "hot-syngas",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-syngas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-oil-sand-recipes",
    order = "a"
}:add_unlock("oil-sands")

-- SOOT SEPARATION --

RECIPE {
    type = "recipe",
    name = "soot-to-iron",
    category = "solid-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "soot", amount = 10}
    },
    results = {
        {type = "item", name = "iron-ore", amount = 10},
        {type = "item", name = "ash", amount = 1, probability = 0.3}
    },
    main_product = "iron-ore",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/class-s-iron.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "b"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "soot-to-copper",
    category = "solid-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "soot", amount = 10}
    },
    results = {
        {type = "item", name = "copper-ore", amount = 8},
        {type = "item", name = "ash", amount = 1, probability = 0.3}
    },
    main_product = "copper-ore",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/class-s-copper.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "b"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "soot-to-aluminium",
    category = "solid-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "soot", amount = 10}
    },
    results = {
        {type = "item", name = "ore-aluminium", amount = 10},
        {type = "item", name = "ash", amount = 1, probability = 0.3}
    },
    main_product = "ore-aluminium",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/class-s-aluminium.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "b"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "soot-to-zinc",
    category = "solid-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "soot", amount = 10}
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 8},
        {type = "item", name = "ash", amount = 1, probability = 0.3}
    },
    main_product = "ore-zinc",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/class-s-zinc.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "b"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "soot-to-lead",
    category = "solid-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "soot", amount = 10}
    },
    results = {
        {type = "item", name = "ore-lead", amount = 8},
        {type = "item", name = "ash", amount = 1, probability = 0.3}
    },
    main_product = "ore-lead",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/class-s-lead.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "b"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "soot-to-silver",
    category = "solid-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "soot", amount = 10}
    },
    results = {
        {type = "item", name = "silver-plate", amount = 1, probability = 0.3},
        {type = "item", name = "ash", amount = 1, probability = 0.3}
    },
    main_product = "silver-plate",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/class-s-silver.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "b"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "soot-to-gold",
    category = "solid-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "soot", amount = 10}
    },
    results = {
        {type = "item", name = "gold-plate", amount = 1, probability = 0.5},
        {type = "item", name = "ash", amount = 1, probability = 0.3}
    },
    main_product = "gold-plate",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/class-s-gold.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "b"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "aromatics-2-diesel",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "aromatics", amount = 500},
        {type = "fluid", name = "naphtha", amount = 100},
        {type = "item", name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "diesel", amount = 350},
    },
    main_product = "diesel",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk02"):replace_ingredient("chromium", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "aromatics-2-diesel2",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "aromatics", amount = 500},
        {type = "fluid", name = "hydrogen", amount = 100},
        {type = "item", name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "diesel", amount = 300},
    },
    main_product = "diesel",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk02")

RECIPE {
    type = "recipe",
    name = "aromatics-2-petgas2",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "aromatics", amount = 100},
        {type = "fluid", name = "hydrogen", amount = 300},
        {type = "item", name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "petroleum-gas", amount = 300},
    },
    main_product = "petroleum-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk02"):replace_ingredient("chromium", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "high-distillate-separation-hydrogen",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "condensed-distillate", amount = 100},
        {type = "item", name = "sncr-alloy", amount = 1},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 400},
    },
    main_product = "hydrogen",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02")

RECIPE {
    type = "recipe",
    name = "low-distillate-to-xylenol",
    category = "hor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "low-distillate", amount = 100},
        {type = "item", name = "ticl4", amount = 1},
    },
    results = {
        {type = "fluid", name = "xylenol", amount = 100},
    },
    main_product = "xylenol",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("py-oil-processing-mk03")

RECIPE {
    type = "recipe",
    name = "low-distillate-to-kerosene",
    category = "hor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "low-distillate", amount = 100},
        {type = "item", name = "ticl4", amount = 1},
    },
    results = {
        {type = "fluid", name = "kerosene", amount = 150},
    },
    main_product = "kerosene",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("py-oil-processing-mk02")

RECIPE {
    type = "recipe",
    name = "xylenol-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coke", amount = 4},
        {type = "fluid", name = "xylenol", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 600},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/combustion-xylenol.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-3")

RECIPE {
    type = "recipe",
    name = "oil-breakdown-2",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "crude-oil", amount = 400},
        {type = "fluid", name = "coke-oven-gas", amount = 70},
    },
    results = {
        {type = "fluid", name = "residual-oil", amount = 150},
        {type = "fluid", name = "low-distillate", amount = 150},
        {type = "fluid", name = "medium-distillate", amount = 150},
        {type = "fluid", name = "high-distillate", amount = 150},
    },
    main_product = "residual-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coke-mk02")

RECIPE {
    type = "recipe",
    name = "tar-breakdown-2",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 650},
        {type = "fluid", name = "coke-oven-gas", amount = 70},
    },
    results = {
        {type = "fluid", name = "residual-oil", amount = 150},
        {type = "fluid", name = "low-distillate", amount = 150},
        {type = "fluid", name = "medium-distillate", amount = 150},
        {type = "fluid", name = "high-distillate", amount = 150},
    },
    main_product = "residual-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coke-mk02")

RECIPE {
    type = "recipe",
    name = "quench-ovengas",
    category = "quenching-tower",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "coke-oven-gas", amount = 100},
    },
    results = {
        {type = "fluid", name = "flue-gas", amount = 1000},
        {type = "fluid", name = "syngas", amount = 100},

    },
    main_product = "syngas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coke-mk02")

RECIPE {
    type = "recipe",
    name = "scrubber-outletgas2",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "outlet-gas-02", amount = 100},
    },
    results = {
        {type = "fluid", name = "flue-gas", amount = 1000},
        {type = "fluid", name = "refsyngas", amount = 150},

    },
    main_product = "refsyngas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coke-mk03")

RECIPE {
    type = "recipe",
    name = "scrubber-outletgas4",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "outlet-gas-02", amount = 100},
    },
    results = {
        {type = "fluid", name = "flue-gas", amount = 1000},
        {type = "fluid", name = "light-oil", amount = 150},

    },
    main_product = "light-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("coke-mk03")

RECIPE {
    type = "recipe",
    name = "redhot-coke",
    category = "bof",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coal", amount = 20},
        {type = "fluid", name = "steam", amount = 200} --pyfe vaccumm
    },
    results = {
        {type = "item", name = "redhot-coke", amount = 5},
        {type = "fluid", name = "coke-oven-gas", amount = 50, temperature = 500}
    },
    main_product = "redhot-coke",
    subgroup = "py-rawores-coke",
}:add_unlock("coke-mk02")


RECIPE {
    type = "recipe",
    name = "casting-bolts",
    category = "casting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "molten-iron", amount = 25},
        {type = "item", name = "borax", amount = 3},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "bolts", amount = 25}
    },
    main_product= "bolts",
    subgroup = "py-rawores-iron",
    order = "azc"
  }:add_unlock("iron-mk02")

RECIPE {
    type = "recipe",
    name = "casting-small-parts",
    category = "casting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "molten-iron", amount = 50},
        {type = "fluid", name = "molten-copper", amount = 20},
        {type = "item", name = "borax", amount = 3},
        {type = "item", name = "rubber", amount = 1},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "small-parts-01", amount = 35}
    },
    main_product= "small-parts-01",
    subgroup = "py-rawores-iron",
    order = "azd"
  }:add_unlock("iron-mk03")

RECIPE('casting-niobium-pipe'):add_ingredient({type = "item", name = "rubber", amount = 2})

RECIPE('casting-niobium-pipe-underground'):add_ingredient({type = "item", name = "rubber", amount = 2})

RECIPE('caasting-engine-unit'):add_ingredient({type = "item", name = "belt", amount = 5})
