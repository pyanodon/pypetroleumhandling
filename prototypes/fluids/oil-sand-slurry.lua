RECIPE {
    type = "recipe",
    name = "oil-sand-slurry",
    category = "mixer", --pyro hydro
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "steam", amount = 350},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "crushed-oil-sand", amount = 2}
    },
    results = {
        {type = "fluid", name = "oil-sand-slurry", amount = 100}
    },
    main_product = "oil-sand-slurry",
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("oil-sands")

FLUID {
    type = "fluid",
    name = "oil-sand-slurry",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-sand-slurry.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.286, g = 0.223, b = 0.160},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
