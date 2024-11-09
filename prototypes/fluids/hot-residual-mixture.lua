FLUID {
    type = "fluid",
    name = "hot-residual-mixture",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-residual-mixture.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.207, g = 0.05, b = 0.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
