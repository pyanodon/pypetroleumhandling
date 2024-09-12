RECIPE {
    type = 'recipe',
    name = 'low-distillate-to-heavy-oil',
    category = 'compressor',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'fluid', name = 'low-distillate', amount = 100},
        {type = 'fluid', name = 'water',          amount = 600},
        {type = 'fluid', name = 'gasoline',       amount = 5}
    },
    results = {
        {type = 'fluid', name = 'heavy-oil', amount = 200},
        {type = 'fluid', name = 'residual-oil', amount = 50},
        {type = 'fluid', name = 'steam', amount = 600, temperature = 150, catalyst_amount = 600}
    },
    main_product = 'heavy-oil',
    subgroup = 'py-petroleum-handling-fluids',
    order = 'a'
}:add_unlock('petroleum-gas-mk01')

RECIPE {
    type = 'recipe',
    name = 'low-distillate-to-coal-gas',
    category = 'hor',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'fluid', name = 'low-distillate', amount = 100},
        {type = 'item',  name = mods.pyrawores and 'sncr-alloy' or 'chromium', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'coal-gas', amount = 200},
    },
    main_product = 'coal-gas',
    subgroup = 'py-petroleum-handling-fluids',
    order = 'a'
}:add_unlock('petroleum-gas-mk01')

RECIPE {
    type = 'recipe',
    name = 'low-distillate-to-btx',
    category = 'hor',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'fluid', name = 'low-distillate', amount = 100},
        {type = 'item',  name = mods.pyrawores and 'sncr-alloy' or 'chromium', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'btx', amount = 100},
    },
    main_product = 'btx',
    subgroup = 'py-petroleum-handling-fluids',
    order = 'a'
}:add_unlock('petroleum-gas-mk01')

RECIPE {
    type = 'recipe',
    name = 'low-distillate-to-lubricant',
    category = 'hor',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'fluid', name = 'low-distillate', amount = 100},
        {type = 'item',  name = mods.pyrawores and 'ticl4' or 'nexelit-plate', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'lubricant', amount = 150},
    },
    main_product = 'lubricant',
}:add_unlock('oil-machines-mk03')
