RECIPE {
    type = "recipe",
    name = "powdered-ralesia-seeds",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ralesia-seeds", amount = 15}
    },
    results = {
        {type = "item", name = "powdered-ralesia-seeds", amount = 1}
    },
    main_product= "powdered-ralesia-seeds",
    icon = "__pyrawores__/graphics/icons/powdered-ralesia-seeds.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02")

RECIPE {
    type = 'recipe',
    name = 'p2s5',
    category = 'hpf',
    enabled = 'false',
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'stone', amount = 15},
        {type = 'item', name = 'pyrite', amount = 10},
    },
    results = {
        {type = 'item', name = 'p2s5', amount = 1},
        {type = 'item', name = 'iron-ore', amount = 3},
    },
    main_product = "p2s5",
}:add_unlock("machines-mk03"):replace_ingredient("stone", "phosphate-rock")
