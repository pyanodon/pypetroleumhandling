RECIPE {
    type = "recipe",
    name = "drilling-fluid-3",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "water", amount = 500},
        {type = "fluid", name = "ethylene-glycol", amount = 50},
        {type = "fluid", name = "boric-acid", amount = 100},
        {type = "item", name = "guar-gum", amount = 1},
        {type = "item", name = "chromium", amount = 3},
    },
    results = {
        {type = "fluid", name = "drilling-fluid-3", amount = 300},
    },
    main_product = "drilling-fluid-3",
    subgroup = "py-petroleum-handling-fluids",
    order = "h"
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "drilling-fluid-3-block",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "drilling-fluid-3", amount = 50},
    },
    results = {
        {type = "item", name = "drilling-fluid-3-block", amount = 1},
    },
    main_product = "drilling-fluid-3-block",
    subgroup = "py-petroleum-handling-fluids",
    order = "h"
}:add_unlock("oil-machines-mk01")

FLUID {
    type = "fluid",
    name = "drilling-fluid-3",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/drilling-fluid-3.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.792, g = 0.203, b = 0.258},
    flow_color = {r = 0.792, g = 0.203, b = 0.258},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "h"
}
