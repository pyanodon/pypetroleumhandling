FLUID {
    type = "fluid",
    name = "hot-reaction-gas",
    icon = "__pypetroleumhandling__/graphics/icons/hot-reaction-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.160, g = 0.125, b = 0.180},
    flow_color = {r = 0.160, g = 0.125, b = 0.180},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}

if mods["pyrawores"] then
RECIPE {
    type = "recipe",
    name = "hot-reaction-gas",
    category = "lor",
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "pressured-hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 600},
        {type = "fluid", name = "naphtha", amount = 150},
        {type = "item", name = "nexelit-plate", amount = 3},
    },
    results = {
        {type = "fluid", name = "hot-reaction-gas", amount = 100},
        {type = "fluid", name = "steam", amount = 600, temperature = 60}
    },
    main_product = "hot-reaction-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk01")
else
    RECIPE {
        type = "recipe",
        name = "hot-reaction-gas",
        category = "lor",
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "water", amount = 600},
            {type = "fluid", name = "naphtha", amount = 150},
            {type = "item", name = "nexelit-plate", amount = 3},
        },
        results = {
            {type = "fluid", name = "hot-reaction-gas", amount = 100},
            {type = "fluid", name = "steam", amount = 600, temperature = 60}
        },
        main_product = "hot-reaction-gas",
        subgroup = "py-petroleum-handling-fluids",
        order = "a"
    }:add_unlock("light-oil-mk01")
end