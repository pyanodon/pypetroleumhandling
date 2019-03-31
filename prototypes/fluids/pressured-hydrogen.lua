FLUID {
    type = "fluid",
    name = "pressured-hydrogen",
    icon = "__pypetroleumhandling__/graphics/icons/pressured-hydrogen.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.160, g = 0.125, b = 0.180},
    flow_color = {r = 0.160, g = 0.125, b = 0.180},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}

RECIPE {
    type = "recipe",
    name = "pressured-hydrogen",
    category = "rectisol",
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 500},
        {type = "fluid", name = "water", amount = 600},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "pressured-hydrogen", amount = 50},
        {type = "fluid", name = "steam", amount = 600, temperature = 60}
    },
    main_product = "pressured-hydrogen",
    subgroup = "py-petroleum-handling-fluids",
    order = "a",
    icon = "__pypetroleumhandling__/graphics/icons/compress-hydrogen.png",
    icon_size = 32,
}:add_unlock("light-oil-mk01"):change_category("compressor")
