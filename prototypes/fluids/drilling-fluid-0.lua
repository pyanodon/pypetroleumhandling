RECIPE {
    type = "recipe",
    name = "drilling-fluid-0",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "sand", amount = 5},
        {type = "item", name = "soil", amount = 5},
        --{type = "item", name = "clay", amount = 1}, needs pyht becuase reasons
    },
    results = {
        {type = "fluid", name = "drilling-fluid-0", amount = 50},
    },
    main_product = "drilling-fluid-0",
    subgroup = "py-petroleum-handling-fluids",
    order = "h"
}:add_unlock("drilling-fluid-mk01")

FLUID {
    type = "fluid",
    name = "drilling-fluid-0",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/drilling-fluid-1.png",
    icon_size = 64,
    default_temperature = 5, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.0, g = 0.772, b = 0.556},
    flow_color = {r = 0.0, g = 0.772, b = 0.556},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "h"
}
