
FLUID {
    type = "fluid",
    name = "drilling-waste",
    icon = "__pycoalprocessinggraphics__/graphics/icons/soil.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.286, g = 0.223, b = 0.160},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c",
    hidden = true
}
