RECIPE {
    type = "recipe",
    name = "refined-natural-gas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "raw-gas", amount = 100},
        {type = "item", name = "biofilm", amount = 1},
    },
    results = {
        {type = "fluid", name = "refined-natural-gas", amount = 100},
        {type = "fluid", name = "acidgas", amount = 100},
    },
    main_product = "refined-natural-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

FLUID {
    type = "fluid",
    name = "refined-natural-gas",
    icon = "__pypetroleumhandling__/graphics/icons/refined-natural-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.464, g = 0.9, b = 0.0},
    flow_color = {r = 0.464, g = 0.9, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
