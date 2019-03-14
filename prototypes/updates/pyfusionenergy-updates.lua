--BUILDINDS--

RECIPE("oil-sand-extractor-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agitator", amount = 1})
RECIPE("oil-sand-extractor-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("heavy-oil-refinery-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("heavy-oil-refinery-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE("upgrader-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("upgrader-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})


----RECIPES----

RECIPE("agzn-alloy"):remove_unlock('fusion-mk03'):add_unlock('oil-sands')
RECIPE("scrude-to-natural-gas"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})
RECIPE("scrude-to-light-oil"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})
RECIPE("scrude-to-methane"):add_ingredient({type = "fluid", name = "vacuum", amount = 100})
RECIPE("extract-ammonia-scrude"):replace_ingredient("nichrome", "molybdenum-plate")


----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "bitumen-to-vanadium",
    category = "upgrader",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 500},
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