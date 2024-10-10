RECIPE {
    type = "recipe",
    name = "chloroethanol",
    category = "mixer", --pyro wet-scrubber
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "ethylene-chlorohydrin", amount = 100},
        {type = "fluid", name = "methanol",              amount = 50},
        {type = "fluid", name = "water",                 amount = 300}
    },
    results = {
        {type = "fluid", name = "chloroethanol", amount = 100},
    },
    main_product = "chloroethanol",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02")

FLUID {
    type = "fluid",
    name = "chloroethanol",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/chloroethanol.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
