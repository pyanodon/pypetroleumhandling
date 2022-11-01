FLUID {
    type = "fluid",
    name = "naphtha",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/naphtha.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.333, g = 0.145, b = 0.129},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
