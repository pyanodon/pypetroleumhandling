if not mods["pyrawores"] then
    RECIPE {
        type = "recipe",
        name = "hot-air-1",
        category = "rhe",
        --hidden = true,
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = "item",  name = "stone-brick",   amount = 10},
            {type = "fluid", name = "pressured-air", amount = 150},
        },
        results = {
            {type = "fluid", name = "hot-air", amount = 100},
        },
        main_product = "hot-air",
        icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
        icon_size = 64,
        subgroup = "py-petroleum-handling-hot-air",
        order = "a1"
    }:add_unlock("hot-air-mk01")
end

FLUID {
    type = "fluid",
    name = "hot-air",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
    icon_size = 64,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 1, g = 0.250, b = 0.203},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
