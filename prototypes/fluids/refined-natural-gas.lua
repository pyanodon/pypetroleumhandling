--[[
RECIPE {
    type = "recipe",
    name = "refined-natural-gas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "raw-gas", amount = 400},
        {type = "item", name = "biofilm", amount = 1},
    },
    results = {
        {type = "fluid", name = "refined-natural-gas", amount = 400},
        {type = "fluid", name = "acidgas", amount = 400},
    },
    main_product = "refined-natural-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02")
]]--

RECIPE {
    type = "recipe",
    name = "raw-gas",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "condensates", amount = 100},
    },
    results = {
        {type = "fluid", name = "refined-natural-gas", amount = 100},
        {type = "fluid", name = "btx", amount = 30},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
    },
    main_product = "refined-natural-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

FLUID {
    type = "fluid",
    name = "refined-natural-gas",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/refined-natural-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.464, g = 0.9, b = 0.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
