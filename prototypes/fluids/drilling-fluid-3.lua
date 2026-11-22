RECIPE {
    type = "recipe",
    name = "drilling-fluid-3",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "water",           amount = 500},
        {type = "fluid", name = "ethylene-glycol", amount = 50},
        {type = "fluid", name = "boric-acid",      amount = 100},
        {type = "item",  name = "guar-gum",        amount = 1},
        {type = "item",  name = "chromium",        amount = 3},
    },
    results = {
        {type = "fluid", name = "drilling-fluid-3", amount = 300},
    },
    main_product = "drilling-fluid-3",
    subgroup = "py-petroleum-handling-fluids",
    order = "h"
}:add_unlock("drilling-fluid-mk04")

FLUID {
    type = "fluid",
    name = "drilling-fluid-3",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/drilling-fluid-4.png",
    icon_size = 64,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.792, g = 0.203, b = 0.258},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-petroleum-handling-fluids",
    order = "h"
}
