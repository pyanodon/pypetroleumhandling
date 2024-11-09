RECIPE {
    type = "recipe",
    name = "polybutadiene",
    category = "cracker",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "aromatics",    amount = 200},
        {type = "fluid", name = "water",        amount = 1000},
        {type = "item",  name = "copper-plate", amount = 1}, --titanium
    },
    results = {
        {type = "fluid", name = "polybutadiene", amount = 100},
        {type = "fluid", name = "steam",         amount = 1000, temperature = 150, ignored_by_productivity = 1000, ignored_by_stats = 1000},
    },
    main_product = "polybutadiene",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/polybutadiene.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("rubber")

FLUID {
    type = "fluid",
    name = "polybutadiene",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/polybutadiene.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.0, g = 0.0, b = 0.00},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-petroleum-handling-fluids",
    order = "c"
}
