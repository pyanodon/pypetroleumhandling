data:extend {
    {
        type = "item-group",
        name = "py-petroleum-handling",
        order = "v",
        inventory_order = "v",
        icon = "__pypetroleumhandlinggraphics__/graphics/technology/item-group.png",
        icon_size = 64
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-buildings-mk01",
        group = "py-petroleum-handling",
        order = "a-a"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-buildings-mk02",
        group = "py-petroleum-handling",
        order = "a-b"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-buildings-mk03",
        group = "py-petroleum-handling",
        order = "a-c"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-buildings-mk04",
        group = "py-petroleum-handling",
        order = "a-d"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-buildings-extras",
        group = "py-petroleum-handling",
        order = "a-e"
    },
    ------------ORES----------
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-ores",
        group = "py-petroleum-handling",
        order = "z-a"
    },
    ------------LIQUIDS----------
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-fluids",
        group = "py-petroleum-handling",
        order = "d-a"
    },
    ------------RECIPES----------
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-oil-sand-recipes",
        group = "py-petroleum-handling",
        order = "f-a"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-scrude-recipes",
        group = "py-petroleum-handling",
        order = "g-a"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-recipes",
        group = "py-petroleum-handling",
        order = "h-a"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-plastic-recipes",
        group = "py-petroleum-handling",
        order = "i-a"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-lubricant-recipes",
        group = "py-petroleum-handling",
        order = "i-b"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-tholin-recipes",
        group = "py-petroleum-handling",
        order = "j-a"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-hot-air",
        group = "py-petroleum-handling",
        order = "k-a"
    },
    ------------ITEMS----------
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-oil-sand-items",
        group = "py-petroleum-handling",
        order = "e-a"
    },
    {
        type = "item-subgroup",
        name = "py-petroleum-handling-items",
        group = "py-petroleum-handling",
        order = "e-b"
    },
}

data.raw.item["plastic-bar"].subgroup = "py-petroleum-handling-plastic-recipes"
data.raw.fluid["lubricant"].subgroup = "py-petroleum-handling-lubricant-recipes"
data.raw.recipe["lubricant"].subgroup = nil
