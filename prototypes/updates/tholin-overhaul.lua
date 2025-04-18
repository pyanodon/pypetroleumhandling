--Remove space science from satellite
--[[
data.raw.item.satellite.rocket_launch_products = {{
    type = 'item',
    name = 'filled-tholins-vessel',
    amount = 500
}}
]] --

RECIPE {
    type = "recipe",
    name = "tholin-capsule",
    energy_required = 5,
    enabled = false,
    category = "crafting",
    ingredients =
    {
        {type = "item", name = "low-density-structure",       amount = 20},
        {type = "item", name = "solar-panel",                 amount = 5},
        {type = "item", name = "accumulator-mk01",            amount = 1},
        {type = "item", name = "advanced-circuit",            amount = 25},
        {type = "item", name = "rocket-fuel",                 amount = 10},
        {type = "item", name = "filled-proto-tholins-vessel", amount = 500},
    },
    results =
    {
        {type = "item", name = "capsule", amount = 1}
    },
    requester_paste_multiplier = 1,
    main_product = "capsule"
}:add_unlock("tholin-mk01")

--Rocket Parts

local lds = RECIPE {
    type = "recipe",
    name = "low-density-structure",
    category = "advanced-crafting",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
        {type = "item", name = "iron-plate",   amount = 2},
        {type = "item", name = "plastic-bar",  amount = 10},
        {type = "item", name = "copper-plate", amount = 10}
    },
    results = {
        {type = "item", name = "low-density-structure", amount = 5}
    },
}:add_ingredient {type = "item", name = "fiberglass", amount = 5}:replace_ingredient("copper-plate", "aerogel")
if mods.pyrawores then lds:replace_ingredient("iron-plate", "aluminium-plate") end

local rocket_fuel = RECIPE {
    type = "recipe",
    name = "rocket-fuel",
    energy_required = 20,
    enabled = false,
    category = "hor",
    ingredients =
    {
        {type = "fluid", name = "olefin",   amount = 75},
        {type = "fluid", name = "gasoline", amount = 50}
    },
    results = {
        {type = "item", name = "rocket-fuel", amount = 5}
    },
}
if mods.pyrawores then rocket_fuel:replace_ingredient("olefin", "oxygen"):replace_ingredient("gasoline", "kerosene") end

RECIPE {
    type = "recipe",
    name = "rocket-part",
    energy_required = 3,
    enabled = false,
    hidden = true,
    category = "rocket-building",
    ingredients =
    {
        {type = "item", name = "speed-module",          amount = 1},
        {type = "item", name = "low-density-structure", amount = 4},
        {type = "item", name = "rocket-fuel",           amount = 10}
    },
    results = {
        {type = "item", name = "rocket-part", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "rocket-silo",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "steel-plate",          amount = 500},
        --{type = "item", name = "titanium-plate", amount = 500},
        {type = "item", name = "concrete",             amount = 1000},
        {type = "item", name = "niobium-pipe",         amount = 50},
        {type = "item", name = "advanced-circuit",     amount = 100},
        {type = "item", name = "electric-engine-unit", amount = 100}
    },
    energy_required = 30,
    results = {
        {type = "item", name = "rocket-silo", amount = 1}
    },
    requester_paste_multiplier = 1
}:add_ingredient {type = "item", name = "titanium-plate", amount = 500}


data.raw.technology["rocket-silo"].prerequisites =
{
    "rocket-fuel",
    "low-density-structure"
}

data.raw.technology["rocket-silo"].unit.ingredients =
{
    {type = "item", name = "automation-science-pack", amount = 1},
    {type = "item", name = "logistic-science-pack",   amount = 1},
    {type = "item", name = "chemical-science-pack",   amount = 1},
    {type = "item", name = "military-science-pack",   amount = 1}
}


data.raw["rocket-silo"]["rocket-silo"].to_be_inserted_to_rocket_inventory_size = 5


RECIPE {
    type = "recipe",
    name = "empty-proto-tholins-vessel",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "low-density-structure", amount = 1},
    },
    results = {
        {type = "item", name = "empty-proto-tholins-vessel", amount = 5},
    },

}:add_unlock("tholin-mk01"):add_ingredient {type = "fluid", name = "vacuum", amount = 70}:add_ingredient {type = "item", name = "glass", amount = 4}

RECIPE {
    type = "recipe",
    name = "fill-proto-tholins-vessel",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item",  name = "empty-proto-tholins-vessel", amount = 1},
        {type = "fluid", name = "proto-tholins",              amount = 100},
    },
    results = {
        {type = "item", name = "filled-proto-tholins-vessel", amount = 1},
    },

}:add_unlock("tholin-mk01")

RECIPE {
    type = "recipe",
    name = "empty-tholins-vessel",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "filled-tholins-vessel", amount = 1},
    },
    results = {
        {type = "item",  name = "empty-proto-tholins-vessel", amount = 1},
        {type = "fluid", name = "tholins",                    amount = 100},
    },
    main_product = "tholins",
}:add_unlock("tholin-mk01")

TECHNOLOGY("kerogen"):remove_prereq("tholin-mk03")
