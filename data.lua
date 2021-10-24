require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local GIR = require("prototypes/functions/functions")

require("prototypes/item-groups")
require("prototypes/recipe-categories")

require('prototypes/items/items')


--(( RESOURCES ))--
require("prototypes.ores.oil-sand")
require("prototypes.ores.tar-patch")
require("prototypes.ores.oil-mk01")
require("prototypes.ores.oil-mk02")
require("prototypes.ores.oil-mk03")
require("prototypes.ores.oil-mk04")
require("prototypes.ores.sulfur-patch")
require("prototypes.ores.natural-gas")
require("prototypes.ores.bitumen-seep")

--(( Technology ))--
require("prototypes.technologies.technologies")
require("prototypes.technologies.oil-machines")
require("prototypes.technologies.tholins")
require("prototypes.technologies.light-oil")
require("prototypes.technologies.petroleum-gas")
require("prototypes.technologies.coalbed")
require("prototypes.technologies.fracking")
require("prototypes.technologies.kerogen")


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
require("prototypes.buildings.lor-mk01")
require("prototypes.buildings.lor-mk02")
require("prototypes.buildings.lor-mk03")
require("prototypes.buildings.lor-mk04")
require("prototypes.buildings.coalbed-mk01")
require("prototypes.buildings.coalbed-mk02")
require("prototypes.buildings.coalbed-mk03")
require("prototypes.buildings.coalbed-mk04")
require("prototypes.buildings.gas-refinery-mk01")
require("prototypes.buildings.gas-refinery-mk02")
require("prototypes.buildings.gas-refinery-mk03")
require("prototypes.buildings.gas-refinery-mk04")
require("prototypes.buildings.sulfur-mine")
require("prototypes.buildings.guar-gum-plantation")
require("prototypes.buildings.guar-gum-plantation-mk02")
require("prototypes.buildings.fracking-rig")
require("prototypes.buildings.retorter")
--seeps and extractors
require("prototypes.buildings.oil-derrick-mk01")
require("prototypes.buildings.oil-derrick-mk02")
require("prototypes.buildings.oil-derrick-mk03")
require("prototypes.buildings.oil-derrick-mk04")
require("prototypes.buildings.bitumen-seep-mk01")
require("prototypes.buildings.bitumen-seep-mk02")
require("prototypes.buildings.bitumen-seep-mk03")
require("prototypes.buildings.bitumen-seep-mk04")
require("prototypes.buildings.tar-extractor-mk01")
require("prototypes.buildings.tar-extractor-mk02")
require("prototypes.buildings.tar-extractor-mk03")
require("prototypes.buildings.tar-extractor-mk04")
require("prototypes.buildings.tar-seep-mk01")
require("prototypes.buildings.tar-seep-mk02")
require("prototypes.buildings.tar-seep-mk03")
require("prototypes.buildings.tar-seep-mk04")
require("prototypes.buildings.natural-gas-extractor-mk01")
require("prototypes.buildings.natural-gas-extractor-mk02")
require("prototypes.buildings.natural-gas-extractor-mk03")
require("prototypes.buildings.natural-gas-extractor-mk04")
require("prototypes.buildings.natural-gas-seep-mk01")
require("prototypes.buildings.natural-gas-seep-mk02")
require("prototypes.buildings.natural-gas-seep-mk03")
require("prototypes.buildings.natural-gas-seep-mk04")

--((space buildings))--
--[[
require("prototypes.buildings.space-factory-mk01")
require("prototypes.buildings.antenna")
require("prototypes.buildings.pod")
require("prototypes.buildings.landing-pad")
]]--

if not mods['omnimatter_fluid'] then
--oil-boiler
require("prototypes.buildings.oil-boiler-mk01")
end

--(( RECIPES ))--
require("prototypes.recipes.recipes")
require("prototypes.recipes.improved-recipes")
require("prototypes.recipes.oil-sand-recipes")
require("prototypes.recipes.pumpjack-recipes")
require("prototypes.recipes.tholin-recipes")
require("prototypes.recipes.coalbed-recipes")
require("prototypes.recipes.fracking-recipes")

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
require("prototypes.fluids.proto-tholins")
require("prototypes.fluids.processed-light-oil")
require("prototypes.fluids.hot-reaction-gas")
require("prototypes.fluids.coalbed-gas")
require("prototypes.fluids.ethylene-glycol")
require("prototypes.fluids.chloroethanol")
require("prototypes.fluids.ethylene-chlorohydrin")
require("prototypes.fluids.condensates")
require("prototypes.fluids.raw-gas")
require("prototypes.fluids.refined-natural-gas")
require("prototypes.fluids.purified-natural-gas")
require("prototypes.fluids.pure-natural-gas")
require("prototypes.fluids.residual-gas")
require("prototypes.fluids.drilling-fluid-0")
require("prototypes.fluids.drilling-fluid-1")
require("prototypes.fluids.drilling-fluid-2")
require("prototypes.fluids.drilling-fluid-3")
require("prototypes.fluids.dirty-syngas")
require("prototypes.fluids.purified-syngas")
require("prototypes.fluids.hot-syngas")
require("prototypes.fluids.residual-oil")
require("prototypes.fluids.low-distillate")
require("prototypes.fluids.medium-distillate")
require("prototypes.fluids.high-distillate")
require("prototypes.fluids.stripped-distillate")
require("prototypes.fluids.condensed-distillate")
require("prototypes.fluids.residual-mixture")
require("prototypes.fluids.hot-residual-mixture")
require("prototypes.fluids.drilling-waste")

--(( TILES ))--
--require("prototypes.tiles.space-plate")
require("prototypes.tiles.space-plate-test")
require("prototypes.tiles.space")

--pyph fluids
data.raw.fluid["bitumen"].fuel_value = "1MJ"
data.raw.fluid["scrude"].fuel_value = "1MJ"
data.raw.fluid["fuel-oil"].fuel_value = "0.8MJ"
data.raw.fluid["natural-gas"].fuel_value = "90KJ"
data.raw.fluid["naphtha"].fuel_value = "0.6MJ"
data.raw.fluid["btx"].fuel_value = "1MJ"
data.raw.fluid["processed-light-oil"].fuel_value = "1MJ"
data.raw.fluid["coalbed-gas"].fuel_value = "0.2MJ"
data.raw.fluid["condensates"].fuel_value = "0.2MJ"
data.raw.fluid["raw-gas"].fuel_value = "0.2MJ"
data.raw.fluid["refined-natural-gas"].fuel_value = "0.3MJ"
data.raw.fluid["purified-natural-gas"].fuel_value = "0.4MJ"
data.raw.fluid["pure-natural-gas"].fuel_value = "0.5MJ"
data.raw.fluid["residual-gas"].fuel_value = "0.2MJ"
data.raw.fluid["dirty-syngas"].fuel_value = "0.2MJ"
data.raw.fluid["purified-syngas"].fuel_value = "1MJ"
data.raw.fluid["hot-syngas"].fuel_value = "1MJ"
data.raw.fluid["residual-oil"].fuel_value = "0.3MJ"
data.raw.fluid["low-distillate"].fuel_value = "0.4MJ"
data.raw.fluid["medium-distillate"].fuel_value = "0.4MJ"
data.raw.fluid["high-distillate"].fuel_value = "0.4MJ"
data.raw.fluid["stripped-distillate"].fuel_value = "0.4MJ"
data.raw.fluid["condensed-distillate"].fuel_value = "0.5MJ"
data.raw.fluid["residual-mixture"].fuel_value = "0.1MJ"
data.raw.fluid["hot-residual-mixture"].fuel_value = "0.1MJ"


table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'syngas', damage_modifier = 1.2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'refsyngas', damage_modifier = 1.2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'methanol', damage_modifier = 1.2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'combustion-mixture1', damage_modifier = 1.2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'oleochemicals', damage_modifier = 1.2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'olefin', damage_modifier = 2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'btx', damage_modifier = 1.2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'scrude', damage_modifier = 1.2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'natural-gas', damage_modifier = 1.2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'fuel-oil', damage_modifier = 1.2})

--pyht
if mods['pyhightech'] then
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'methane', damage_modifier = 1.2})
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'benzene', damage_modifier = 1.2})
end

--pyal
if mods['pyalienlife'] then
table.insert(data.raw['fluid-turret']['flamethrower-turret'].attack_parameters.fluids, {type = 'ethanol', damage_modifier = 1.2})
end

--(( OTHERS ))--
GIR.global_item_replacer("iron-gear-wheel","small-parts-01",{"iron-gear-wheel","small-parts-01","casting-gear"})
