FLUID {
    type = "fluid",
    name = "residual-gas",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/residual-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.407, g = 0.380, b = 0.611},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
