<<<<<<< HEAD
=======
require("__stdlib__/stdlib/data/data").Util.create_data_globals()

>>>>>>> 6e16296c4c74023a64d26d023db28e106babafd7
require("prototypes/item-groups")
require("prototypes/recipe-categories")

--require('prototypes/recipes/recipes')
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
require("prototypes.buildings.tanks-10000")
require("prototypes.buildings.tanks-9000")
--))

--(( RECIPES ))--
--require("prototypes.recipes.recipes")
require("prototypes.recipes.oil-sand-recipes")

--(( FLUIDs ))--
require("prototypes.fluids.oil-sand-slurry")

--(( OTHERS ))--
