RECIPE {
    type = "recipe",
    name = "high-distillate-condensing",
    category = "lor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "high-distillate", amount = 200},
        {type = "fluid", name = "gasoline",        amount = 20}
    },
    results = {
        {type = "fluid", name = "condensed-distillate", amount = 50},
        {type = "fluid", name = "naphtha",              amount = 150}
    },
    main_product = "naphtha",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk01")

RECIPE {
    type = "recipe",
    name = "condensed-distillate-separation",
    category = "gas-refinery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "condensed-distillate", amount = 100},
    },
    results = {
        {type = "fluid", name = "gasoline",      amount = 25},
        {type = "fluid", name = "petroleum-gas", amount = 50},
    },
    main_product = "petroleum-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk01")
