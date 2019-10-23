RECIPE {
    type = "recipe",
    name = "bitumen-froth",
    category = "pan",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "pressured-air", amount = 200},
        {type = "fluid", name = "oil-sand-slurry", amount = 100},
        {type = "item", name = "crushed-oil-sand", amount = 2}
    },
    results = {
        {type = "fluid", name = "bitumen-froth", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 100},
    },
    main_product = "bitumen-froth",
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("oil-sands")

FLUID {
    type = "fluid",
    name = "bitumen-froth",
    icon = "__pypetroleumhandling__/graphics/icons/bitumen-froth.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.286, g = 0.223, b = 0.160},
    flow_color = {r = 0.286, g = 0.223, b = 0.160},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
