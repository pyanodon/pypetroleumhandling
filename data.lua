require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local GIR = require("functions/functions")

require("prototypes/item-groups")
require("prototypes/recipe-categories")

require('prototypes/items/items')


--(( RESOURCES ))--
require("prototypes.ores.oil-sand")
--))

--(( Technology ))--
require("prototypes.technologies.technologies")
require("prototypes.technologies.oil-machines")


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
--))

--(( RECIPES ))--
require("prototypes.recipes.recipes")
require("prototypes.recipes.improved-recipes")
require("prototypes.recipes.oil-sand-recipes")

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


--(( OTHERS ))--
GIR.global_item_replacer("iron-gear-wheel","small-parts-01",{"iron-gear-wheel","small-parts-01"})