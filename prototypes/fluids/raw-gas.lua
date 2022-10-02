RECIPE {
    type = "recipe",
    name = "raw-gas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "condensates", amount = 100},
    },
    results = {
        {type = "fluid", name = "raw-gas", amount = 100},
        {type = "fluid", name = "btx", amount = 30},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
    },
    main_product = "raw-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}--:add_unlock("petroleum-gas-mk01")

FLUID {
    type = "fluid",
    name = "raw-gas",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/raw-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.843, g = 0.466, b = 0.0},
    flow_color = {r = 0.843, g = 0.466, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
