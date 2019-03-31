RECIPE {
    type = "recipe",
    name = "tholins",
    category = "tholin-atm",
    enabled = false,
    energy_required = 4,
    ingredients = {
    },
    results = {
        {type = "fluid", name = "tholins", amount = 10},
    },
    main_product = "tholins",
    icon = "__pypetroleumhandling__/graphics/icons/tholins.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "a"
}:add_unlock("tholin-mk01")

FLUID {
    type = "fluid",
    name = "tholins",
    icon = "__pypetroleumhandling__/graphics/icons/tholins.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.6, g = 0.223, b = 0.125},
    flow_color = {r = 0.6, g = 0.223, b = 0.125},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
