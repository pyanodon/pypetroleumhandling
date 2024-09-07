
  RECIPE {
    type = "recipe",
    name = "medium-distillate-to-stripped-distillate",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "medium-distillate", amount = 100},
        {type = "item", name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "stripped-distillate", amount = 100},
    },
    main_product = "stripped-distillate",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk02"):replace_ingredient("nexelit-plate", "ticl4")

RECIPE {
    type = "recipe",
    name = "stripped-distillate-to-light-oil",
    category = "compressor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "stripped-distillate", amount = 100},
        {type = "fluid", name = "water", amount = 600},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "light-oil", amount = 300},
        {type = "fluid", name = "residual-oil", amount = 50},
        {type = "fluid", name = "steam", amount = 600, temperature = 150, catalyst_amount = 600}
    },
    main_product = "light-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk03")

RECIPE {
    type = "recipe",
    name = "stripped-distillate-to-gasoline",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "stripped-distillate", amount = 100},
        {type = "item", name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 200},
    },
    main_product = "gasoline",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk02"):replace_ingredient("chromium", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "stripped-distillate-to-methanol",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "stripped-distillate", amount = 100},
        {type = "item", name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "methanol", amount = 150},
    },
    main_product = "methanol",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk02"):replace_ingredient("nexelit-plate", "ticl4")

RECIPE {
    type = "recipe",
    name = "stripped-distillate-to-olefin",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "stripped-distillate", amount = 100},
        {type = "item", name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "olefin", amount = 200},
    },
    main_product = "olefin",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk03"):replace_ingredient("chromium", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "stripped-distillate-to-fuel-oil",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "stripped-distillate", amount = 100},
        {type = "item", name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "fuel-oil", amount = 250},
    },
    main_product = "fuel-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk03"):replace_ingredient("nexelit-plate", "ticl4")
