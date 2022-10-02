
RECIPE {
    type = "recipe",
    name = "naphtha-to-syngas",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "naphtha", amount = 150},
        {type = "fluid", name = "steam", amount = 800, temperature = 165},
        {type = "item", name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "syngas", amount = 400},
    },
    main_product = "syngas",
    icon = "__pycoalprocessinggraphics__/graphics/icons/syngas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-processing")
