RECIPE {
    type = "recipe",
    name = "bitumen-to-asphalt",
    category = "hor",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
        {type = "item", name = "gravel", amount = 10},
    },
    results = {
        {type = "item", name = "py-asphalt", amount = 10},
    },
    main_product = "py-asphalt",
    icon = "__pyindustry__/graphics/icons/py-asphalt-icon.png",
    icon_size = 32,
    subgroup = "py-tiles",
    order = "a-asphalt-b"
}:add_unlock("oil-sands")