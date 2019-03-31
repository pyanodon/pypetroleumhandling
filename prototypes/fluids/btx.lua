FLUID {
    type = "fluid",
    name = "btx",
    icon = "__pypetroleumhandling__/graphics/icons/btx.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.117, g = 0.196, b = 0.309},
    flow_color = {r = 0.117, g = 0.196, b = 0.309},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
