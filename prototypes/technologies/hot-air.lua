TECHNOLOGY {
    type = "technology",
    name = "hot-air-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/technology/hot-air-mk01.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}

if mods["pyrawores"] then
    TECHNOLOGY {
        type = "technology",
        name = "hot-air-mk02",
        icon = "__pypetroleumhandlinggraphics__/graphics/technology/hot-air-mk02.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"hot-air-mk01",},
        dependencies = {"hot-air-mk01"},
        effects = {},
        unit = {
            count = 150,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
            },
            time = 50
        }
    }

    TECHNOLOGY {
        type = "technology",
        name = "hot-air-mk03",
        icon = "__pypetroleumhandlinggraphics__/graphics/technology/hot-air-mk03.png",
        icon_size = 128,
        order = "c-a",
        dependencies = {"hot-air-mk02"},
        effects = {},
        unit = {
            count = 150,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"chemical-science-pack",   1},
            },
            time = 50
        }
    }
end
