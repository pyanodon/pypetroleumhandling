RECIPE {
    type = "recipe",
    name = "ethylene-chlorohydrin",
    category = "mixer", --pyph fbreactor
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "carbon-dioxide", amount = 100},
        {type = "fluid", name = "water",          amount = 300},
        {type = "item",  name = "copper-plate",   amount = 3}
    },
    results = {
        {type = "fluid", name = "ethylene-chlorohydrin", amount = 100},
    },
    main_product = "ethylene-chlorohydrin",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02").category = "fbreactor"

FLUID {
    type = "fluid",
    name = "ethylene-chlorohydrin",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/ethylene-chlorohydrin.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
