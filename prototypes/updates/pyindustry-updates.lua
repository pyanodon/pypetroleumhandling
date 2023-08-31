
RECIPE("py-asphalt"):replace_ingredient("tar", "pitch")

RECIPE("reformer-mk02"):add_ingredient({type = "item", name = "py-tank-5000", amount = 2})
RECIPE("py-construction-robot-01"):add_ingredient({type = "item", name = "belt", amount = 3})
RECIPE("py-logistic-robot-01"):add_ingredient({type = "item", name = "belt", amount = 3})
RECIPE("mk02-locomotive"):add_ingredient({type = "item", name = "rubber", amount = 40})
RECIPE("mk02-wagon"):add_ingredient({type = "item", name = "rubber", amount = 40})
RECIPE("mk02-fluid-wagon"):add_ingredient({type = "item", name = "rubber", amount = 40})
RECIPE("py-roboport-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 20})
RECIPE("py-roboport-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 50})

table.insert(RECIPE("ash-separation").results, {type = "item", name = "soot", amount = 1, probability = 0.2})

RECIPE {
    type = "recipe",
    name = "bitumen-to-asphalt",
    category = "hor",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 10},
        {type = "fluid", name = "anthracene-oil", amount = 10},
        {type = "item", name = "gravel", amount = 2},
    },
    results = {
        {type = "item", name = "py-asphalt", amount = 2},
    },
}:add_unlock("py-asphalt-mk02")

RECIPE {
    type = "recipe",
    name = "soot-separation",
    category = "solid-separator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "soot", amount = 2}
    },
    results = {
        {type = "item", name = "iron-ore", amount = 1, probability = 0.2},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.2},
        {type = "item", name = "ash", amount = 1, probability = 0.3}
    },
    unlock_results = false,
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/class-s.png",
    icon_size = 64,
    subgroup = "py-items-class",
    order = "b"
}:add_unlock("separation")
