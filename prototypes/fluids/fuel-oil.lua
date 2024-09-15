
RECIPE {
    type = "recipe",
    name = "scrude-to-fuel-oil",
    category = "distilator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
    },
    results = {
        {type = "fluid", name = "fuel-oil", amount = 100},
    },
    main_product = "fuel-oil",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/fuel-oil.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}--:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "crude-to-fuel-oil",
    category = "distilator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "crude-oil", amount = 200},
    },
    results = {
        {type = "fluid", name = "fuel-oil", amount = 100},
    },
    main_product = "fuel-oil",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/fuel-oil.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}--:add_unlock("energy-1")

FLUID {
    type = "fluid",
    name = "fuel-oil",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/fuel-oil.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.937, g = 0.611, b = 0.00},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
