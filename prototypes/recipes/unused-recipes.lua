RECIPE {
    type = "recipe",
    name = "tar-to-oil",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 300},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 100},
    },
    main_product = "crude-oil",
    icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "tar-to-scrude",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar",      amount = 300},
        {type = "item",  name = "chromium", amount = 3},
    },
    results = {
        {type = "fluid", name = "scrude", amount = 100},
    },
    main_product = "scrude",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/scrude.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "scrude-to-natural-gas",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude",        amount = 100}, --add vacuum
        {type = "item",  name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 100},
    },
    main_product = "natural-gas",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/natural-gas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "scrude-to-light-oil",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "fluid", name = "water",  amount = 200},
    },
    results = {
        {type = "fluid", name = "light-oil",         amount = 100},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},
    },
    main_product = "light-oil",
    icon = "__base__/graphics/icons/fluid/light-oil.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "scrude-to-crude-oil",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude", amount = 100},
        {type = "fluid", name = "steam",  amount = 400},
        --propene
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 120},
        {type = "fluid", name = "bitumen",   amount = 20},
    },
    main_product = "crude-oil",
    icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "heavy-oil-to-naphtha",
    category = "olefin",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "heavy-oil", amount = 100},
    },
    results = {
        {type = "fluid", name = "naphtha", amount = 70},
    },
    main_product = "naphtha",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/naphtha.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("heavy-oil-mk01")

RECIPE {
    type = "recipe",
    name = "heavy-oil-to-gasoline",
    category = "olefin",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "heavy-oil", amount = 100},
        {type = "item",  name = "nichrome",  amount = 1}, -- Ticl4
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 70},
    },
    main_product = "gasoline",
    icon = "__pycoalprocessinggraphics__/graphics/icons/gasoline.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "extract-sulfur-scrude",
    category = "desulfurization",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "scrude",       amount = 100},
        {type = "item",  name = "copper-plate", amount = 2}, --nickel
    },
    results = {
        {type = "item", name = "sulfur", amount = 15},
    },
    main_product = "sulfur",
    icon = "__base__/graphics/icons/sulfur.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("desulfurization")

RECIPE {
    type = "recipe",
    name = "carbon-black",
    category = "reformer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "tar",     amount = 50},
        {type = "fluid", name = "hot-air", amount = 25},
    },
    results = {
        {type = "item", name = "carbon-black", amount = 1},
    },
    main_product = "carbon-black",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/carbon-black.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "carbon-black-2",
    category = "reformer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "crude-oil", amount = 50},
        {type = "fluid", name = "hot-air",   amount = 25},
    },
    results = {
        {type = "item", name = "carbon-black", amount = 2},
    },
    main_product = "carbon-black",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/carbon-black.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber")

RECIPE {
    type = "recipe",
    name = "tar-to-heavycoke",
    category = "hor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 300},
    },
    results = {
        {type = "fluid", name = "heavy-oil", amount = 100},
        {type = "item",  name = "coke",      amount = 20},
    },
    main_product = "heavy-oil",
    icon = "__base__/graphics/icons/fluid/heavy-oil.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("fuel-production"):add_ingredient {type = "fluid", name = "vacuum", amount = 70}

RECIPE {
    type = "recipe",
    name = "wood-to-nafta",
    category = "distilator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hot-air", amount = 100},
        {type = "item",  name = "wood",    amount = 12},
    },
    results = {
        {type = "fluid", name = "naphtha",  amount = 25},
        {type = "fluid", name = "flue-gas", amount = 100},
    },
    main_product = "naphtha",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/naphtha.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "naphtha-to-syngas",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "naphtha",  amount = 150},
        {type = "fluid", name = "steam",    amount = 800},
        {type = "item",  name = "chromium", amount = 1},
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

RECIPE {
    type = "recipe",
    name = "crude-oil-to-heavy-oil",
    category = "cracker",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "crude-oil", amount = 100},
        {type = "fluid", name = "steam",     amount = 200},
    },
    results = {
        {type = "fluid", name = "heavy-oil", amount = 100},
    },
    main_product = "heavy-oil",
    icon = "__base__/graphics/icons/fluid/heavy-oil.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-processing")

RECIPE {
    type = "recipe",
    name = "crude-oil-to-heavy-oil-2",
    category = "cracker",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "crude-oil",     amount = 100},
        {type = "fluid", name = "steam",         amount = 200},
        {type = "item",  name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "heavy-oil", amount = 120},
    },
    main_product = "heavy-oil",
    icon = "__base__/graphics/icons/fluid/heavy-oil.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-processing")

RECIPE {
    type = "recipe",
    name = "heavy-oil-to-natural-gas",
    category = "fts-reactor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "heavy-oil",     amount = 250},
        {type = "fluid", name = "water",         amount = 2000},
        {type = "fluid", name = "hot-air",       amount = 150},
        {type = "item",  name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 250},
        {type = "fluid", name = "steam",       amount = 2000, temperature = 150, catalyst_amount = 2000},
    },
    main_product = "natural-gas",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/natural-gas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("heavy-oil-mk01")

RECIPE {
    type = "recipe",
    name = "heavy-oil-to-gasoline-2",
    category = "fts-reactor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "heavy-oil", amount = 200},
        {type = "fluid", name = "water",     amount = 2000},
        {type = "fluid", name = "hot-air",   amount = 150},
        {type = "item",  name = "nichrome",  amount = 1},
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 300},
        {type = "fluid", name = "steam",    amount = 2000, temperature = 150, catalyst_amount = 2000},
    },
    main_product = "gasoline",
    icon = "__pycoalprocessinggraphics__/graphics/icons/gasoline.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("heavy-oil-mk02")

RECIPE {
    type = "recipe",
    name = "heavy-oil-to-syngas",
    category = "fts-reactor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "heavy-oil", amount = 200},
        {type = "fluid", name = "water",     amount = 2000},
        {type = "fluid", name = "hot-air",   amount = 150},
        {type = "item",  name = "chromium",  amount = 1},
    },
    results = {
        {type = "fluid", name = "syngas", amount = 300},
        {type = "fluid", name = "steam",  amount = 2000, temperature = 150, catalyst_amount = 2000},
    },
    main_product = "syngas",
    icon = "__pycoalprocessinggraphics__/graphics/icons/syngas.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("heavy-oil-mk01")

RECIPE {
    type = "recipe",
    name = "processed-light-oil-to-olefins",
    category = "reformer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "processed-light-oil", amount = 300},
        {type = "item",  name = "nichrome",            amount = 1},
    },
    results = {
        {type = "fluid", name = "olefin", amount = 400},
    },
    --main_product = "styrene",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("light-oil-mk03")

RECIPE {
    type = "recipe",
    name = "processed-light-oil-to-light-oil",
    category = "reformer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "processed-light-oil", amount = 300},
        {type = "item",  name = "nichrome",            amount = 1},
    },
    results = {
        {type = "fluid", name = "light-oil", amount = 400},
    },
    --main_product = "styrene",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("light-oil-mk02")

RECIPE {
    type = "recipe",
    name = "natural-gas-to-crude",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 200},
        {type = "item",  name = "coal",        amount = 10},
    },
    results = {
        {type = "fluid", name = "scrude", amount = 100},
    },
    --main_product = "styrene",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("petroleum-gas-mk02")

if mods["pyhightech"] and mods["pyrawores"] and mods["pyfusionenergy"] then
    RECIPE {
        type = "recipe",
        name = "pure-natural-gas-to-methane",
        category = "gas-refinery",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "pure-natural-gas", amount = 100},
            {type = "fluid", name = "liquid-nitrogen",  amount = 50},
        },
        results = {
            {type = "fluid", name = "methane",      amount = 500},
            {type = "fluid", name = "nitrogen",     amount = 500},
            {type = "fluid", name = "residual-gas", amount = 100},
        },
        main_product = "methane",
        subgroup = "py-hightech-fluids",
        order = "a"
    }:add_unlock("petroleum-gas-mk03")
else
    if mods["pyhightech"] then
        RECIPE {
            type = "recipe",
            name = "pure-natural-gas-to-methane-2",
            category = "gas-refinery",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type = "fluid", name = "pure-natural-gas", amount = 100},
                {type = "fluid", name = "water",            amount = 500},
            },
            results = {
                {type = "fluid", name = "methane",      amount = 300},
                {type = "fluid", name = "steam",        amount = 500, temperature = 150, catalyst_amount = 500},
                {type = "fluid", name = "residual-gas", amount = 100},
            },
            main_product = "methane",
            subgroup = "py-hightech-fluids",
            order = "a"
        }:add_unlock("petroleum-gas-mk03")
    else
        RECIPE {
            type = "recipe",
            name = "pure-natural-gas-to-petgas",
            category = "gas-refinery",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {type = "fluid", name = "pure-natural-gas", amount = 100},
                {type = "fluid", name = "water",            amount = 500},
            },
            results = {
                {type = "fluid", name = "petroleum-gas", amount = 300},
                {type = "fluid", name = "steam",         amount = 500, temperature = 150, catalyst_amount = 500},
                {type = "fluid", name = "residual-gas",  amount = 100},
            },
            main_product = "petroleum-gas",
            subgroup = "py-petroleum-handling-fluids",
            order = "a"
        }:add_unlock("petroleum-gas-mk03")
    end
end

RECIPE {
    type = "recipe",
    name = "residual-gas-to-gasoline",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "residual-gas", amount = 100},
        {type = "item",  name = "nichrome",     amount = 1},
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 200},
    },
    main_product = "gasoline",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk03")

RECIPE {
    type = "recipe",
    name = "residual-gas-to-syngas",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "residual-gas", amount = 100},
        {type = "item",  name = "nichrome",     amount = 1},
    },
    results = {
        {type = "fluid", name = "syngas", amount = 300},
    },
    main_product = "syngas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk03")

RECIPE {
    type = "recipe",
    name = "residual-gas-to-olefins",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "residual-gas", amount = 100},
        {type = "item",  name = "nichrome",     amount = 1},
    },
    results = {
        {type = "fluid", name = "olefin", amount = 250},
    },
    main_product = "olefin",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk03")

RECIPE {
    type = "recipe",
    name = "aromatics-2-petgas",
    category = "lor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "aromatics", amount = 400},
        {type = "fluid", name = "naphtha",   amount = 120},
        {type = "item",  name = "chromium",  amount = 1},
    },
    results = {
        {type = "fluid", name = "petroleum-gas", amount = 400},
    },
    main_product = "petroleum-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("light-oil-mk02"):replace_ingredient("chromium", "sncr-alloy")

-- >>>>>COKE BIG CHAIN<<<<< --

--[[
RECIPE {
    type = "recipe",
    name = "oil-breakdown",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "crude-oil", amount = 400},
    },
    results = {
        {type = "fluid", name = "residual-oil", amount = 100},
        {type = "fluid", name = "low-distillate", amount = 100},
        {type = "fluid", name = "medium-distillate", amount = 100},
        {type = "fluid", name = "high-distillate", amount = 100},
    },
    main_product = "residual-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("oil-distillation")

RECIPE {
    type = "recipe",
    name = "tar-breakdown",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 650},
    },
    results = {
        {type = "fluid", name = "residual-oil", amount = 100},
        {type = "fluid", name = "low-distillate", amount = 100},
        {type = "fluid", name = "medium-distillate", amount = 100},
        {type = "fluid", name = "high-distillate", amount = 100},
    },
    main_product = "residual-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("oil-distillation")

RECIPE {
    type = "recipe",
    name = "tar-breakdown-2",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 650},
        {type = "fluid", name = "coke-oven-gas", amount = 70},
    },
    results = {
        {type = "fluid", name = "residual-oil", amount = 150},
        {type = "fluid", name = "low-distillate", amount = 150},
        {type = "fluid", name = "medium-distillate", amount = 150},
        {type = "fluid", name = "high-distillate", amount = 150},
    },
    main_product = "residual-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("oil-distillation")
]] --

-- HIGH DISTILLATE --

-- MEDIUM DISTILLATE --

-- LOW DISTILLATE --

-- RESIDUAL OIL --

RECIPE {
    type = "recipe",
    name = "kerogen-1",
    enabled = false,
    category = "kerogen",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "hot-air",    amount = 1000},
        {type = "item",  name = "coke",       amount = 10},
        {type = "item",  name = "drill-head", amount = 3},
    },
    results = {
        {type = "item", name = "kerogen", amount = 70},
    },
    main_product = "kerogen",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("kerogen")

RECIPE {
    type = "recipe",
    name = "kerogen-2",
    category = "kerogen",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "hot-air", amount = 1000},
        {type = "fluid", name = "steam",   amount = 1000},
        {type = "item",  name = "coke",    amount = 10},
        {type = "item",  name = "pipe",    amount = 15},
    },
    results = {
        {type = "item", name = "kerogen", amount = 400},
    },
    main_product = "kerogen",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("kerogen"):replace_ingredient("pipe", "niobium-pipe")

RECIPE {
    type = "recipe",
    name = "kerogen-extraction",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "kerogen",      amount = 100},
        {type = "item", name = "fuelrod-mk01", amount = 1},
    },
    results = {
        {type = "fluid", name = "scrude", amount = 400},
    },
    main_product = "scrude",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("kerogen")

RECIPE {
    type = "recipe",
    name = "kerogen-extraction-2",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "kerogen", amount = 100},
        {type = "fluid", name = "water",   amount = 3000},
        {type = "fluid", name = "hot-air", amount = 1000},
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 200},
    },
    main_product = "gasoline",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("kerogen")

RECIPE {
    type = "recipe",
    name = "kerogen-extraction-3",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "kerogen", amount = 100},
        {type = "fluid", name = "water",   amount = 3000},
        {type = "fluid", name = "hot-air", amount = 1000},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 450},
    },
    main_product = "crude-oil",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("kerogen")

RECIPE {
    type = "recipe",
    name = "kerogen-separation",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "kerogen", amount = 100},
        {type = "fluid", name = "hot-air", amount = 300},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 450},
        {type = "fluid", name = "crude-oil",   amount = 50},
    },
    main_product = "natural-gas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("kerogen")

if mods["pyrawores"] then
    RECIPE {
        type = "recipe",
        name = "lubricant-breakdown-olefin",
        category = "cracker",
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 300},
            {type = "fluid", name = "steam",     amount = 400},
            --propene
        },
        results = {
            {type = "fluid", name = "olefin",  amount = 150},
            {type = "fluid", name = "bitumen", amount = 50},
            {type = "item",  name = "soot",    amount = 4},
        },
        main_product = "olefin",
        subgroup = "py-petroleum-handling-scrude-recipes",
        order = "a"
    }:add_unlock("light-oil-mk02")
else
    RECIPE {
        type = "recipe",
        name = "lubricant-breakdown-olefin-2",
        category = "cracker",
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 300},
            {type = "fluid", name = "steam",     amount = 400},
            --propene
        },
        results = {
            {type = "fluid", name = "olefin",  amount = 150},
            {type = "fluid", name = "bitumen", amount = 50},
        },
        main_product = "olefin",
        subgroup = "py-petroleum-handling-scrude-recipes",
        order = "a"
    }:add_unlock("light-oil-mk02")
end



if mods["pyrawores"] then
    RECIPE {
        type = "recipe",
        name = "lubricant-breakdown-bitumen",
        category = "hor",
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 300},
            {type = "fluid", name = "steam",     amount = 400},
            {type = "item",  name = "ticl4",     amount = 1},
        },
        results = {
            {type = "fluid", name = "bitumen", amount = 100},
            {type = "item",  name = "soot",    amount = 4},
        },
        main_product = "bitumen",
        subgroup = "py-petroleum-handling-scrude-recipes",
        order = "a"
    }:add_unlock("lubricant")
else
    RECIPE {
        type = "recipe",
        name = "lubricant-breakdown-bitumen",
        category = "hor",
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 300},
            {type = "fluid", name = "steam",     amount = 400},
        },
        results = {
            {type = "fluid", name = "bitumen", amount = 100},
        },
        main_product = "bitumen",
        subgroup = "py-petroleum-handling-scrude-recipes",
        order = "a"
    }:add_unlock("lubricant")
end

RECIPE {
    type = "recipe",
    name = "natural-gas-to-petgas",
    category = "carbonfilter",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 400},
        {type = "item",  name = "chromium",    amount = 1},
    },
    results = {
        {type = "fluid", name = "petroleum-gas", amount = 400},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("petroleum-gas-mk02"):replace_ingredient("chromium", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "low-distillate-to-medium-distillate",
    category = "cracker",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "low-distillate", amount = 100},
        {type = "fluid", name = "steam",          amount = 300},
        {type = "item",  name = "chromium",       amount = 1},
    },
    results = {
        {type = "fluid", name = "medium-distillate", amount = 100},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("heavy-oil-mk02"):replace_ingredient("chromium", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "medium-distillate-to-high-distillate",
    category = "cracker",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "medium-distillate", amount = 100},
        {type = "fluid", name = "steam",             amount = 300},
        {type = "item",  name = "chromium",          amount = 1},
    },
    results = {
        {type = "fluid", name = "high-distillate", amount = 100},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("light-oil-mk02"):replace_ingredient("chromium", "sncr-alloy")


RECIPE {
    type = "recipe",
    name = "gas-condensates",
    category = "gas-refinery",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "condensates", amount = 100},
    },
    results = {
        {type = "fluid", name = "liquid-petgas",     amount = 100},
        {type = "fluid", name = "btx",               amount = 30},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
    },
    main_product = "liquid-petgas",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

RECIPE {
    type = "recipe",
    name = "syngas-to-h2",
    category = "gas-refinery",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "syngas",        amount = 100},
        {type = "fluid", name = "petroleum-gas", amount = 25},
        {type = "fluid", name = "hot-air",       amount = 25}, --should be oxygen
        --needs ammonia
    },
    results = {
        {type = "fluid", name = "carbon-dioxide", amount = 50},
        {type = "fluid", name = "hydrogen",       amount = 50},
    },
    main_product = "hydrogen",
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("kerogen")

RECIPE {
    type = "recipe",
    name = "bitumen-to-scrude",
    category = "hor",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen",  amount = 100},
        {type = "item",  name = "chromium", amount = 2},
    },
    results = {
        {type = "fluid", name = "scrude", amount = 100},
    },
    main_product = "scrude",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/scrude.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "btx-to-aromatics",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "btx",           amount = 100},
        {type = "fluid", name = "steam",         amount = 200},
        {type = "item",  name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "aromatics", amount = 200},
    },
    main_product = "aromatics",
    icon = "__pycoalprocessinggraphics__/graphics/icons/aromatics.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("oil-processing")

RECIPE {
    type = "recipe",
    name = "btx-to-styrene",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "btx",      amount = 200},
        {type = "fluid", name = "methanol", amount = 120},
        {type = "fluid", name = "steam",    amount = 350},
        {type = "item",  name = "chromium", amount = 1},
    },
    results = {
        {type = "fluid", name = "styrene", amount = 100},
    },
    main_product = "styrene",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/styrene.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("rubber-3")

RECIPE {
    type = "recipe",
    name = "methane-to-methanol",
    category = "methanol",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 100},
        {type = "fluid", name = "hot-air",     amount = 100},
        {type = "item",  name = "nichrome",    amount = 1},
    },
    results = {
        {type = "fluid", name = "methanol", amount = 150},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("methanol-processing-1"):replace_ingredient("nichrome", "sncr-alloy")

RECIPE {
    type = "recipe",
    name = "methane-to-methanol4",
    category = "methanol",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "natural-gas",  amount = 400},
        {type = "fluid", name = "hot-air",      amount = 100},
        {type = "item",  name = "copper-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "methanol", amount = 300},
    },
    subgroup = "py-petroleum-handling-recipes",
    order = "a"
}:add_unlock("methanol-processing-1"):add_ingredient {type = "item", name = "ticl4", amount = 2}

RECIPE {
    type = "recipe",
    name = "condensates",
    category = "compressor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "natural-gas", amount = 150},
        {type = "fluid", name = "water",       amount = 200},
        {type = "fluid", name = "gasoline",    amount = 10},
    },
    results = {
        {type = "fluid", name = "condensates", amount = 100},
        {type = "fluid", name = "steam",       amount = 200, temperature = 150, catalyst_amount = 200},
        {type = "fluid", name = "naphtha",     amount = 50},
    },
    main_product = "condensates",
    subgroup = "py-petroleum-handling-fluids",
    order = "a"
}:add_unlock("petroleum-gas-mk01")

RECIPE {
    type = "recipe",
    name = "bitumen-to-scrude",
    category = "hor",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen",  amount = 100},
        {type = "item",  name = "chromium", amount = 2},
    },
    results = {
        {type = "fluid", name = "scrude", amount = 100},
    },
    main_product = "scrude",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/scrude.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
} --:add_unlock("scrude")

RECIPE {
    type = "recipe",
    name = "nafta-to-aromatics",
    category = "reformer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "naphtha",    amount = 100},
        {type = "item",  name = "iron-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "aromatics", amount = 160},
    },
    main_product = "aromatics",
    icon = "__pycoalprocessinggraphics__/graphics/icons/aromatics.png",
    icon_size = 64,
    subgroup = "py-petroleum-handling-scrude-recipes",
    order = "a"
}:add_unlock("scrude")
