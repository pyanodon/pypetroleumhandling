RECIPE {
    type = "recipe",
    name = "hot-air",
    category = "rhe",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "stone-brick", amount = 10},
    },
    results = {
        {type = "fluid", name = "hot-air", amount = 300},
    },
    main_product = "hot-air",
    icon = "__pypetroleumhandling__/graphics/icons/hot-air.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("coal-processing-1")

FLUID {
    type = "fluid",
    name = "hot-air",
    icon = "__pypetroleumhandling__/graphics/icons/hot-air.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 1, g = 0.250, b = 0.203},
    flow_color = {r = 1, g = 0.250, b = 0.203},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
