--if mods['pyhightech'] then

RECIPE {
    type = "recipe",
    name = "proto-tholins",
    category = "tholin-atm",
    enabled = false,
    energy_required = 5,
    ingredients = {
    },
    results = {
        {type = "fluid", name = "proto-tholins", amount = 50},
    },
    main_product = "proto-tholins",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/proto-tholins.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-tholin-recipes",
    order = "a"
}:add_unlock("tholin-mk01")

FLUID {
    type = "fluid",
    name = "proto-tholins",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/proto-tholins.png",
    icon_size = 64,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.6, g = 0.223, b = 0.125},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}

--end
