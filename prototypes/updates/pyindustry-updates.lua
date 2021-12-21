RECIPE("reformer-mk02"):add_ingredient({type = "item", name = "py-tank-5000", amount = 2})
RECIPE("py-construction-robot-01"):add_ingredient({type = "item", name = "belt", amount = 3})
RECIPE("py-logistic-robot-01"):add_ingredient({type = "item", name = "belt", amount = 3})
RECIPE("mk02-locomotive"):add_ingredient({type = "item", name = "rubber", amount = 40})
RECIPE("mk02-wagon"):add_ingredient({type = "item", name = "rubber", amount = 40})
RECIPE("mk02-fluid-wagon"):add_ingredient({type = "item", name = "rubber", amount = 40})
RECIPE("py-roboport-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 20})

RECIPE {
    type = "recipe",
    name = "bitumen-to-asphalt",
    category = "hor",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
        {type = "item", name = "gravel", amount = 10},
    },
    results = {
        {type = "item", name = "py-asphalt", amount = 10},
    },
    main_product = "py-asphalt",
    icon = "__pyindustry__/graphics/icons/py-asphalt-icon.png",
    icon_size = 32,
    subgroup = "py-tiles",
    order = "a-asphalt-b"
}:add_unlock("oil-sands")

