
--Disabled Techs

--TECHNOLOGY('fluid-processing-machines-1'):remove_pack('logistic-science-pack')

--disabled RECIPES

RECIPE("tar-oil"):remove_unlock('coal-processing-3'):set_fields{hidden = true}

RECIPE("sulfur-crudeoil"):remove_unlock('desulfurization'):set_fields{hidden = true}

RECIPE("sulfur-heavyoil"):remove_unlock('desulfurization'):set_fields{hidden = true}

RECIPE("sulfur-lightoil"):remove_unlock('desulfurization'):set_fields{hidden = true}

RECIPE("sulfur-petgas"):remove_unlock('desulfurization'):set_fields{hidden = true}

RECIPE("creosote"):remove_unlock('creosote'):set_fields{hidden = true}

RECIPE("heavy-oil_from_coal-gas"):remove_unlock("advanced-oil-processing"):set_fields{hidden = true}

RECIPE("heavyoil-to-coal-gas"):remove_unlock("advanced-oil-processing"):set_fields{hidden = true}

RECIPE("tar-gasification"):remove_unlock("tar-processing"):set_fields{hidden = true}

RECIPE("coalgas-syngas"):remove_unlock("desulfurization"):set_fields{hidden = true}

RECIPE("aromatics-to-rubber"):remove_unlock("advanced-oil-processing"):set_fields{hidden = true}

RECIPE("oleochemicals-crude-oil"):remove_unlock("advanced-oil-processing"):set_fields{hidden = true}

RECIPE("creosote-to-aromatics"):remove_unlock('creosote'):set_fields{hidden = true}

RECIPE("anthraquinone"):remove_unlock("sulfur-processing"):set_fields{hidden = true}

--TECHNOLOGIES--
TECHNOLOGY("excavation-1"):add_pack("chemical-science-pack")

TECHNOLOGY("energy-2"):add_pack("chemical-science-pack")

if not (mods["pyrawores"] or mods["pyhightech"]) then
    TECHNOLOGY("sulfur-processing"):add_pack("chemical-science-pack")
    TECHNOLOGY("battery"):add_pack("chemical-science-pack")
    TECHNOLOGY("battery-equipment"):add_pack("chemical-science-pack")
    TECHNOLOGY("battery-mk2-equipment"):add_pack("production-science-pack")
    TECHNOLOGY("electric-energy-accumulators"):add_pack("chemical-science-pack")
    TECHNOLOGY("accumulator-mk01"):add_pack("production-science-pack")
    TECHNOLOGY("accumulator-mk02"):add_pack("utility-science-pack")
end
--BUILDINDS--

-- RECIPE("chemical-plant-mk01"):remove_unlock('filtration'):add_unlock('fluid-processing-machines-1')
RECIPE("evaporator"):remove_unlock('fluid-processing-machines-1'):add_unlock('fluid-processing-machines-2')
RECIPE("agitator-mk01"):remove_unlock('fluid-processing-machines-1'):add_unlock('fluid-processing-machines-2')
RECIPE("gas-separator-mk01"):remove_unlock('fluid-processing-machines-1'):add_unlock('fluid-processing-machines-2')

RECIPE("advanced-foundry-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("ball-mill-mk01"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("botanical-nursery"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("desulfurizator-unit"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("distilator"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("gasifier"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("jaw-crusher"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("quenching-tower"):replace_ingredient("iron-stick", "small-parts-01"):remove_unlock("fluid-separation"):add_unlock("nexelit")
RECIPE("ralesia-plantation-mk01"):replace_ingredient("pipe", "small-parts-01")
RECIPE("rectisol"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("washer"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})
RECIPE("mixer-mk01"):replace_ingredient("chemical-plant-mk01", "washer")
table.insert(data.raw["assembling-machine"]["advanced-foundry-mk01"].crafting_categories,"hot-air-advanced-foundry")
if mods['pyrawores'] then
table.insert(data.raw["assembling-machine"]["advanced-foundry-mk02"].crafting_categories,"hot-air-advanced-foundry")
table.insert(data.raw["assembling-machine"]["advanced-foundry-mk03"].crafting_categories,"hot-air-advanced-foundry")
table.insert(data.raw["assembling-machine"]["advanced-foundry-mk04"].crafting_categories,"hot-air-advanced-foundry")
end
--log(serpent.block(data.raw["assembling-machine"]["advanced-foundry-mk01"]))

RECIPE("stone-distilation"):remove_unlock('coal-processing-1')

if not mods['pyrawores'] then
    RECIPE('automated-factory-mk01'):replace_ingredient('advanced-circuit', 'electronic-circuit')
    RECIPE("oleo-heavy"):remove_unlock("fluid-separation")
end

--update tar quenching
RECIPE {
    type = "recipe",
    name = "tar-quenching",
    category = "quenching-tower",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "tar", amount = 500},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "dirty-water-heavy", amount = 500},
        {type = "fluid", name = "flue-gas", amount = 150},
        {type = "fluid", name = "water-saline", amount = 250},
        {type = "item", name = "soot", amount = 2}
    },
    icons = {
        {icon = "__pycoalprocessinggraphics__/graphics/icons/dirty-water.png", icon_size = 64}
    },
    subgroup = "py-quenching-ores",
    order = "tailings-a"
}:add_unlock("nexelit")

RECIPE("tailings-copper-iron"):remove_unlock('fluid-separation'):set_fields{hidden = true}

RECIPE("tailings-borax-niobium"):remove_unlock('fluid-separation'):set_fields{hidden = true}

--parts2

RECIPE("cooling-tower-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("advanced-foundry-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("automated-factory-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("ball-mill-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("borax-mine-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("botanical-nursery-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("carbon-filter-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("classifier-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("desulfurizator-unit-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("distilator-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("evaporator-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("fluid-separator-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("fts-reactor-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("gasifier-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("glassworks-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("ground-borer-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 20})
RECIPE("jaw-crusher-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("methanol-reactor-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("olefin-plant-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("power-house-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("quenching-tower-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("rectisol-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("sand-extractor-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("soil-extractormk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("solid-separator-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("tar-processing-unit-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("washer-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("wpu-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("gasturbinemk02"):replace_ingredient("iron-gear-wheel", "small-parts-02")
RECIPE("chemical-plant-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 15})

--parts3

RECIPE("co2-absorber"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("gasturbinemk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("advanced-foundry-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("automated-factory-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("ball-mill-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("borax-mine-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("botanical-nursery-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("glassworks-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("ground-borer-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("carbon-filter-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("classifier-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("desulfurizator-unit-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("distilator-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("evaporator-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("fluid-separator-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("fts-reactor-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("gasifier-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("jaw-crusher-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("methanol-reactor-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("olefin-plant-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("power-house-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("quenching-tower-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("rectisol-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("sand-extractor-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("soil-extractormk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("solid-separator-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("tar-processing-unit-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("washer-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("wpu-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})
RECIPE("chemical-plant-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 10})

RECIPE("mining-nexelit"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-2", amount = 100}):remove_unlock("excavation-1"):add_unlock("excavation-2")
RECIPE("mining-borax"):replace_ingredient("coal-gas", "syngas"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-1", amount = 100})
RECIPE("mining-niobium"):replace_ingredient("coal-gas", "refsyngas"):remove_ingredient("lubricant"):add_ingredient({type = "fluid", name = "drilling-fluid-3", amount = 150})
RECIPE("mining-niobium"):remove_unlock("excavation-2"):add_unlock("excavation-3")

----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "fuel-oil-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coke", amount = 4},
        {type = "fluid", name = "fuel-oil", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 800},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/combustion-fuel-oil.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-2")

RECIPE {
    type = "recipe",
    name = "natural-gas-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coke", amount = 4},
        {type = "fluid", name = "natural-gas", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 100, temperature = 600},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/combustion-natural-gas.png",
    icon_size = 32,
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-2")

RECIPE {
    type = "recipe",
    name = "aromatics-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coke", amount = 4},
        {type = "fluid", name = "aromatics", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 520},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/combustion-aromatics.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-2")

RECIPE {
    type = "recipe",
    name = "scrude-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coke", amount = 3},
        {type = "fluid", name = "scrude", amount = 100},
        {type = "fluid", name = "water", amount = 500},
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 200, temperature = 600},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/combustion-scrude.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-2")

RECIPE {
    type = "recipe",
    name = "crude-oil-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coke", amount = 4},
        {type = "fluid", name = "crude-oil", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 100, temperature = 500},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/combustion-crude-oil.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-2")

RECIPE {
    type = "recipe",
    name = "naphtha-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coke", amount = 4},
        {type = "fluid", name = "naphtha", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 100, temperature = 650},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/combustion-naphtha.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-2")

RECIPE {
    type = "recipe",
    name = "lubricant-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coke", amount = 4},
        {type = "fluid", name = "lubricant", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 520},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/combustion-lubricant.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-2")


RECIPE {
    type = "recipe",
    name = "extract-olefin-scrude",
    category = "desulfurization",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "item", name = "nichrome", amount = 1},
    },
    results = {
        {type = "fluid", name = "olefin", amount = 100},
        {type = "item", name = "sulfur", amount = 1},
    },
    main_product = "olefin",
    icon = "__pycoalprocessinggraphics__/graphics/icons/olefin.png",
    icon_size = 32,
    subgroup = "py-syngas",
    order = "a"
}:add_unlock("desulfurization")
