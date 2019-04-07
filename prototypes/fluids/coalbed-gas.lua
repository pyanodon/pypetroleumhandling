FLUID {
    type = "fluid",
    name = "coalbed-gas",
    icon = "__pypetroleumhandling__/graphics/icons/coalbed-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.431, g = 0.188, b = 0.156},
    flow_color = {r = 0.431, g = 0.188, b = 0.156},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
