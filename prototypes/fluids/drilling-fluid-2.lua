if mods["pyhightech"] and mods["pyrawores"] then
    RECIPE {
        type = "recipe",
        name = "drilling-fluid-2",
        category = "mixer",
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "hydrogen-chloride", amount = 50},
            {type = "fluid", name = "ethylene-glycol", amount = 50},
            {type = "fluid", name = "boric-acid", amount = 100},
            {type = "item", name = "guar-gum", amount = 1},
            {type = "item", name = "collagen", amount = 2}
        },
        results = {
            {type = "fluid", name = "drilling-fluid-2", amount = 100},
        },
        main_product = "drilling-fluid-2",
        subgroup = "py-petroleum-handling-fluids",
        order = "h"
    }:add_unlock("oil-machines-mk02")
    else if mods["pyhightech"] then
        RECIPE {
            type = "recipe",
            name = "drilling-fluid-2",
            category = "mixer",
            enabled = false,
            energy_required = 4,
            ingredients = {
                {type = "fluid", name = "acetic-acid", amount = 50},
                {type = "fluid", name = "ethylene-glycol", amount = 50},
                {type = "fluid", name = "boric-acid", amount = 100},
                {type = "item", name = "guar-gum", amount = 1},
                {type = "item", name = "collagen", amount = 2}
            },
            results = {
                {type = "fluid", name = "drilling-fluid-2", amount = 100},
            },
            main_product = "drilling-fluid-2",
            subgroup = "py-petroleum-handling-fluids",
            order = "h"
        }:add_unlock("oil-machines-mk02")
    else
        RECIPE {
            type = "recipe",
            name = "drilling-fluid-2",
            category = "mixer",
            enabled = false,
            energy_required = 4,
            ingredients = {
                {type = "fluid", name = "water", amount = 50},
                {type = "fluid", name = "ethylene-glycol", amount = 50},
                {type = "fluid", name = "boric-acid", amount = 100},
                {type = "item", name = "guar-gum", amount = 1}
            },
            results = {
                {type = "fluid", name = "drilling-fluid-2", amount = 100},
            },
            main_product = "drilling-fluid-2",
            subgroup = "py-petroleum-handling-fluids",
            order = "h"
        }:add_unlock("oil-machines-mk02")
    end
end

FLUID {
    type = "fluid",
    name = "drilling-fluid-2",
    icon = "__pypetroleumhandling__/graphics/icons/drilling-fluid-2.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.980, g = 0.682, b = 0.0},
    flow_color = {r = 0.980, g = 0.682, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "h"
}
