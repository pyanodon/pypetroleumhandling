FLUID {
    type = "fluid",
    name = "processed-light-oil",
    icon = "__pypetroleumhandling__/graphics/icons/processed-light-oil.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
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
        name = "processed-light-oil-2",
        category = "gas-separator",
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "hot-reaction-gas", amount = 150},
            {type = "item", name = "nickel-plate", amount = 3},
        },
        results = {
            {type = "fluid", name = "processed-light-oil", amount = 150},
            {type = "fluid", name = "hydrogen", amount = 750}
        },
        main_product = "processed-light-oil",
        subgroup = "py-petroleum-handling-fluids",
        order = "a"
    }:add_unlock("light-oil-mk02")
else
    RECIPE {
        type = "recipe",
        name = "processed-light-oil",
        category = "gas-separator",
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "hot-reaction-gas", amount = 100},
            {type = "item", name = "iron-plate", amount = 3},
        },
        results = {
            {type = "fluid", name = "processed-light-oil", amount = 100},
        },
        main_product = "processed-light-oil",
        subgroup = "py-petroleum-handling-fluids",
        order = "a"
    }:add_unlock("light-oil-mk02")
end

