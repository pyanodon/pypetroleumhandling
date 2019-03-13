--BUILDINDS--

RECIPE("oil-sand-extractor-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 15}):add_ingredient({type = "item", name = "nexelit-plate", amount = 5})
RECIPE("oil-sand-extractor-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("oil-sand-extractor-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE("oil-sand-extractor-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 20})
RECIPE("heavy-oil-refinery-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 10}):add_ingredient({type = "item", name = "chromium", amount = 10})
RECIPE("heavy-oil-refinery-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("heavy-oil-refinery-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 25}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE("heavy-oil-refinery-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 25})
RECIPE("upgrader-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 15}):add_ingredient({type = "item", name = "chromium", amount = 5})
RECIPE("upgrader-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE("upgrader-mk03"):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE("upgrader-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 30})

--RECIPES--

RECIPE("oil-sand-slurry"):change_category("hydroclassifier")
RECIPE("bitumen"):change_category("flotation")
RECIPE("py-tank-10000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("bitumen-to-oil"):add_ingredient({type = "fluid", name = "hydrogen", amount = 150})
RECIPE("bitumen-to-oil2"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100})
RECIPE("bitumen-to-scrude"):replace_ingredient("chromium", "sncr-alloy"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100})
RECIPE("tar-to-scrude"):replace_ingredient("chromium", "duralumin")


----EXCLUSIVE RECIPES----

RECIPE {
    type = "recipe",
    name = "sncr-alloy",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "chromium", amount = 3},
        {type = "item", name = "tin-plate", amount = 4},
    },
    results = {
        {type = "item", name = "sncr-alloy", amount = 1},
    },
    main_product = "sncr-alloy",
    icon = "__pypetroleumhandling__/graphics/icons/sncr-alloy.png",
    icon_size = 32,
    subgroup = "py-petroleum-handling-oil-sand-recipes",
    order = "a"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "bitumen-to-nickel",
    category = "upgrader",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
        {type = "fluid", name = "hydrogen", amount = 50},
    },
    results = {
        {type = "item", name = "ore-nickel", amount = 10},
    },
    main_product = "ore-nickel",
    icon = "__pyrawores__/graphics/icons/ore-nickel.png",
    icon_size = 32,
    subgroup = "py-rawores-nickel",
    order = "a"
}:add_unlock("oil-sands"):replace_ingredient("hydrogen", "propene")

RECIPE {
    type = "recipe",
    name = "bitumen-to-nitrogen",
    category = "upgrader",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bitumen", amount = 100},
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 200},
    },
    main_product = "nitrogen",
    icon = "__pyrawores__/graphics/icons/nitrogen.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "a"
}:add_unlock("oil-sands")

RECIPE {
    type = "recipe",
    name = "tar-to-nickel",
    category = "upgrader",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tar", amount = 300},
        {type = "fluid", name = "hydrogen", amount = 100},
    },
    results = {
        {type = "item", name = "ore-nickel", amount = 10},
    },
    main_product = "ore-nickel",
    icon = "__pyrawores__/graphics/icons/ore-nickel.png",
    icon_size = 32,
    subgroup = "py-rawores-nickel",
    order = "a"
}:add_unlock("oil-machines-mk01")