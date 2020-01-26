RECIPE {
    type = "recipe",
    name = "ethylene-glycol",
    category = "pan", --pyro scrubber
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "slacked-lime", amount = 20},
        {type = "fluid", name = "chloroethanol", amount = 100},
        {type = "fluid", name = "water", amount = 100},
        {type = "item", name = "pure-sand", amount = 5}
    },
    results = {
        {type = "fluid", name = "ethylene-glycol", amount = 150},
    },
    main_product = "ethylene-glycol",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk02"):change_category("scrubber")

FLUID {
    type = "fluid",
    name = "ethylene-glycol",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/ethylene-glycol.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.290, g = 0.611, b = 0.721},
    flow_color = {r = 0.290, g = 0.611, b = 0.721},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
