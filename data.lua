require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local GIR = require("functions/functions")

require("prototypes/item-groups")
require("prototypes/recipe-categories")

require('prototypes/items/items')


--(( RESOURCES ))--
require("prototypes.ores.oil-sand")
require("prototypes.ores.oil-mk01")
require("prototypes.ores.oil-mk02")
require("prototypes.ores.oil-mk03")
require("prototypes.ores.oil-mk04")
--))

--(( Technology ))--
require("prototypes.technologies.technologies")
require("prototypes.technologies.oil-machines")
require("prototypes.technologies.tholins")


--(( BUILDINGS ))--
require("prototypes.buildings.oil-sand-extractor-mk01")
require("prototypes.buildings.oil-sand-extractor-mk02")
require("prototypes.buildings.oil-sand-extractor-mk03")
require("prototypes.buildings.oil-sand-extractor-mk04")
require("prototypes.buildings.heavy-oil-refinery-mk01")
require("prototypes.buildings.heavy-oil-refinery-mk02")
require("prototypes.buildings.heavy-oil-refinery-mk03")
require("prototypes.buildings.heavy-oil-refinery-mk04")
require("prototypes.buildings.upgrader-mk01")
require("prototypes.buildings.upgrader-mk02")
require("prototypes.buildings.upgrader-mk03")
require("prototypes.buildings.upgrader-mk04")
require("prototypes.buildings.tanks-10000")
require("prototypes.buildings.tanks-9000")
require("prototypes.buildings.cracker-mk01")
require("prototypes.buildings.cracker-mk02")
require("prototypes.buildings.cracker-mk03")
require("prototypes.buildings.cracker-mk04")
require("prototypes.buildings.reformer-mk01")
require("prototypes.buildings.reformer-mk02")
require("prototypes.buildings.reformer-mk03")
require("prototypes.buildings.reformer-mk04")
require("prototypes.buildings.rhe")
require("prototypes.buildings.oil-derrick-mk01")
require("prototypes.buildings.oil-derrick-mk02")
require("prototypes.buildings.oil-derrick-mk03")
require("prototypes.buildings.oil-derrick-mk04")
require("prototypes.buildings.tholin-atm-mk01")
require("prototypes.buildings.tholin-atm-mk02")
require("prototypes.buildings.tholin-atm-mk03")
require("prototypes.buildings.tholin-atm-mk04")
require("prototypes.buildings.pumpjack-mk01")
require("prototypes.buildings.pumpjack-mk02")
require("prototypes.buildings.pumpjack-mk03")
require("prototypes.buildings.pumpjack-mk04")
require("prototypes.buildings.tholin-plant-mk01")
require("prototypes.buildings.tholin-plant-mk02")
require("prototypes.buildings.tholin-plant-mk03")
require("prototypes.buildings.tholin-plant-mk04")
--))

--(( RECIPES ))--
require("prototypes.recipes.recipes")
require("prototypes.recipes.improved-recipes")
require("prototypes.recipes.oil-sand-recipes")
require("prototypes.recipes.pumpjack-recipes")
require("prototypes.recipes.tholin-recipes")

--(( FLUIDs ))--
require("prototypes.fluids.oil-sand-slurry")
require("prototypes.fluids.bitumen-froth")
require("prototypes.fluids.bitumen")
require("prototypes.fluids.scrude")
require("prototypes.fluids.fuel-oil")
require("prototypes.fluids.natural-gas")
require("prototypes.fluids.naphtha")
require("prototypes.fluids.polybutadiene")
require("prototypes.fluids.hot-air")
require("prototypes.fluids.styrene")
require("prototypes.fluids.btx")
require("prototypes.fluids.tholins")


--(( OTHERS ))--
GIR.global_item_replacer("iron-gear-wheel","small-parts-01",{"iron-gear-wheel","small-parts-01"})

--(( Shortcut keys ))--
local recipeselect=
	{
	type = "custom-input",
	name = "recipe-selector",
	key_sequence = "SHIFT + R",
	consuming = "none"
	}
	
data:extend{recipeselect}