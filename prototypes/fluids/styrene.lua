RECIPE {
    type = "recipe",
    name = "styrene",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "syngas",     amount = 100}, --benzene
        {type = "fluid", name = "aromatics",  amount = 100}, --ethylene
        {type = "fluid", name = "steam",      amount = 100},
        {type = "item",  name = "iron-oxide", amount = 2},
    },
    results = {
        {type = "fluid", name = "styrene", amount = 100},
    },
    main_product = "styrene",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/styrene.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber-3")

FLUID {
    type = "fluid",
    name = "styrene",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/styrene.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.0, g = 0.0, b = 0.00},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
