RECIPE {
    type = "recipe",
    name = "condensates",
    category = "compressor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 150},
        {type = "fluid", name = "water", amount = 200},
        {type = "fluid", name = "gasoline", amount = 10},
    },
    results = {
        {type = "fluid", name = "condensates", amount = 100},
        {type = "fluid", name = "steam", amount = 200, temperature = 60},
        {type = "fluid", name = "naphtha", amount = 50},
    },
    main_product = "condensates",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02")

FLUID {
    type = "fluid",
    name = "condensates",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/condensates.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.447, g = 0.447, b = 0.0},
    flow_color = {r = 0.447, g = 0.447, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
