RECIPE {
    type = "recipe",
    name = "bitumen",
    category = "mixer", --pyro flotation
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "pressured-air", amount = 100},
        {type = "fluid", name = "naphtha",       amount = 70},
        {type = "fluid", name = "bitumen-froth", amount = 100},
    },
    results = {
        {type = "fluid", name = "bitumen",           amount = 250},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
    },
    main_product = "bitumen",
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("oil-sands")

FLUID {
    type = "fluid",
    name = "bitumen",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/bitumen.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.01, g = 0.01, b = 0.01},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
