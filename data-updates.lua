require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
end

if mods["pycoalprocessing"] then
    require("prototypes/updates/pycoalprocessing-updates")
end

if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end

if mods["pyindustry"] then
    require("prototypes/updates/pyindustry-updates")
end

--ADAPTATIONS


--RECIPES UPDATES

RECIPE("electric-engine-unit"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})

local recipes_list =
	{
  "oil-sand-extractor-mk01",
  "oil-sand-extractor-mk02",
  "oil-sand-extractor-mk03",
  "oil-sand-extractor-mk04",
  "heavy-oil-refinery-mk01",
  "heavy-oil-refinery-mk02",
  "heavy-oil-refinery-mk03",
  "heavy-oil-refinery-mk04",
  "upgrader-mk01",
  "upgrader-mk02",
  "upgrader-mk03",
  "upgrader-mk04",
  "py-tank-10000",
  "py-tank-9000",
  "cracker-mk01",
  "cracker-mk02",
  "cracker-mk03",
  "cracker-mk04",
  "reformer-mk01",
  "reformer-mk02",
  "reformer-mk03",
  "reformer-mk04",
  "rhe",
  "oil-derrick-mk01",
  "tholin-atm-mk01",
  "tholin-atm-mk02",
  "tholin-atm-mk03",
  "tholin-atm-mk04",
  "bolts",
  "small-parts-01",
  "small-parts-02",
  "small-parts-03",
  "belt",
  "tar-to-oil",
  "tar-to-scrude",
  "scrude-to-natural-gas",
  "scrude-to-light-oil",
  "scrude-to-crude-oil",
  "scrude-to-naphtha",
  "heavy-oil-to-naphtha",
  "heavy-oil-to-gasoline",
  "extract-sulfur-scrude",
  "carbon-black",
  "carbon-black-2",
  "rubber-01",
  "rubber-02",
  "tar-to-nafta",
  "wood-to-nafta",
  "nafta-to-aromatics",
  "rubber-03",
  "crude-oil-to-naphtha",
  "btx-to-aromatics",
  "naphtha-to-syngas",
  "crush-oil-sand",
  "bitumen-to-oil",
  "bitumen-to-oil2",
  "bitumen-to-tar",
  "bitumen-to-sulfur",
  "oil-sand-slurry",
  "bitumen-froth",
  "bitumen",
  "bitumen-to-scrude",
  "scrude-to-fuel-oil",
  "crude-to-fuel-oil",
  "polybutadiene",
  "hot-air",
  "styrene",
  "tholins",
  "bitumen-to-vanadium",
  "tar-to-vanadium",
  "scrude-to-methane",
  "extract-ammonia-scrude",
  "rubber-04",
  "btx-to-benzene",
  "btx-to-ethylene",
  "btx-to-methane",
  "fuel-oil-combustion",
  "scrude-combustion",
  "crude-oil-combustion",
  "naphtha-combustion",
  "extract-olefin-scrude",
  "sncr-alloy",
  "bitumen-to-nickel",
  "bitumen-to-nitrogen",
  "tar-to-nickel",
  "scrude-to-hydrogen",
  "extract-nitrogen-scrude",
  "heavy-oil-to-kerosene",
  "ticl4",
  "plastic-bar-02",
  "aromatics-to-petgas",
  "naphtha-to-h2",
  "btx-to-xylenol",
  "bitumen-to-asphalt",
  "hotair-copper-plate",
  "hotair-iron-plate",
  "hotair-stone-brick",
  "hotair-steel-plate",
  "hotair-iron-oxide",
  "hotair-crushed-iron",
  "hotair-crushed-copper",
  "hotair-super-alloy",
  "hotair-nbti-alloy",
  "hotair-blanket-chassi",
  "hotair-wall-shield",
  "hotair-reinforced-wall-shield",
  "hotair-agzn-alloy",
  "hotair-phosphate-glass",
  "hotair-re-tin",
  "hotair-carbon-aerogel",
  "hotair-heavy-fermion",
  "hotair-crco-alloy",
  "hotair-ndfeb-alloy",
  "hotair-re-magnet",
  "hotair-pyrolytic-carbon",
  "hotair-proton-receiver",
  "hotair-duralumin-1",
  "hotair-glass-1",
  "hotair-glass-5",
  "hotair-glass-6",
  "hotair-aluminium-plate-1",
  "hotair-chromium-plate-1",
  "hotair-low-grade-smelting-copper",
  "hotair-low-grade-smelting-iron",
  "hotair-lead-plate-1",
  "hotair-lead-plate-2",
  "hotair-silver-plate-1",
  "hotair-silver-plate-2",
  "hotair-molten-nexelit-01",
  "hotair-molten-nexelit-02",
  "hotair-molten-nexelit-03",
  "hotair-molten-nexelit-04",
  "hotair-molten-nexelit-05",
  "hotair-nexelit-plate-1",
  "hotair-nexelit-plate-2",
  "hotair-nickel-plate-1",
  "hotair-nickel-plate-2",
  "hotair-molten-stainless-steel",
  "hotair-molten-super-steel",
  "hotair-tin-plate-1",
  "hotair-tin-plate-2",
  "hotair-tin-plate-4",
  "hotair-molten-titanium-01",
  "hotair-molten-titanium-02",
  "hotair-molten-titanium-03",
  "hotair-molten-titanium-04",
  "hotair-molten-titanium-05",
  "hotair-titanium-plate-1",
  "hotair-titanium-plate-2",
  "hotair-titanium-plate-4",
  "hotair-molten-zinc-01",
  "hotair-molten-zinc-02",
  "hotair-molten-zinc-03",
  "hotair-molten-zinc-04",
  "hotair-molten-zinc-05",
  "hotair-zinc-plate-1",
  "hotair-zinc-plate-2",
  "hotair-zinc-plate-4",
  "hotair-nexelit-plate",
  "hotair-steel-plate2",
  "hotair-sncr-alloy"
}

--adding to module limitation list
FUN.productivity(recipes_list)