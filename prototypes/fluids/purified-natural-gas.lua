
RECIPE {
    type = "recipe",
    name = "purified-natural-gas",
    category = "gas-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "refined-natural-gas", amount = 100},
        {type = "fluid", name = "ethylene-glycol", amount = 50},
        {type = "item", name = "filtration-media", amount = 1},
    },
    results = {
        {type = "fluid", name = "purified-natural-gas", amount = 100},
    },
    main_product = "purified-natural-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02")

FLUID {
    type = "fluid",
    name = "purified-natural-gas",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/purified-natural-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.756, g = 0.992, b = 0.0},
    flow_color = {r = 0.756, g = 0.992, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
