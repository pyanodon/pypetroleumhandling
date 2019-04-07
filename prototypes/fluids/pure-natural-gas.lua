RECIPE {
    type = "recipe",
    name = "pure-natural-gas",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "purified-natural-gas", amount = 100},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "active-carbon", amount = 2},
    },
    results = {
        {type = "fluid", name = "pure-natural-gas", amount = 100},
        {type = "fluid", name = "rich-gas", amount = 40},
    },
    main_product = "pure-natural-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02")

FLUID {
    type = "fluid",
    name = "pure-natural-gas",
    icon = "__pypetroleumhandling__/graphics/icons/pure-natural-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.996, g = 0.650, b = 0.0},
    flow_color = {r = 0.996, g = 0.650, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
