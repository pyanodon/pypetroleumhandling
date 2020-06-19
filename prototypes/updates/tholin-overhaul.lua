
--Remove space science from satellite
--[[
data.raw.item.satellite.rocket_launch_product =
    {
        type = 'item',
        name = 'filled-tholins-vessel',
        amount = 500
    }
]]--

RECIPE {
    type = 'recipe',
    name = 'tholin-capsule',
    energy_required = 5,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"low-density-structure", 30},
      {"solar-panel", 25},
      {"accumulator-mk01", 1},
      {"advanced-circuit", 25},
	    {"rocket-fuel", 10},
	    {'filled-proto-tholins-vessel', 500},
    },
	results =
		{
			{type = 'item', name = "capsule", amount = 1}
		},
    requester_paste_multiplier = 1,
    main_product = 'capsule'
  }:add_unlock('tholin-mk01')

--Rocket Parts
RECIPE {
    type = "recipe",
    name = "rocket-control-unit",
    energy_required = 15,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"advanced-circuit", 1},
      {"electronic-circuit", 2},
      {"speed-module", 1}
    },
    result= "rocket-control-unit"
  }:change_category('electronic')

RECIPE {
    type = "recipe",
    name = "low-density-structure",
    category = "advanced-crafting",
    energy_required = 20,
    enabled = false,
    ingredients =
      {
        {"aluminium-plate", 2},
        {"plastic-bar", 10},
        {"copper-plate", 10}
      },
    result = "low-density-structure",
    result_count = 5
  }:add_ingredient("fiberglass", 5):replace_ingredient('copper-plate','aerogel')

RECIPE {
    type = "recipe",
    name = "rocket-fuel",
    energy_required = 20,
    enabled = false,
    category = "hor",
    ingredients =
    {
      {type="fluid", name="oxygen", amount=75},
      {type="fluid", name="kerosene", amount=50}
    },
    result = "rocket-fuel",
    result_count = 5
  }

RECIPE {
    type = 'recipe',
    name = "rocket-part",
    energy_required = 3,
    enabled = false,
    hidden = true,
    category = "rocket-building",
    ingredients =
    {
      {"rocket-control-unit", 1},
      {"low-density-structure", 4},
      {"rocket-fuel", 10}
    },
    result= "rocket-part"
  }

RECIPE {
    type = "recipe",
    name = "rocket-silo",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 500},
      {"titanium-plate", 500},
      {"concrete", 1000},
      {"niobium-pipe", 50},
      {"advanced-circuit", 100},
      {"electric-engine-unit", 100}
    },
    energy_required = 30,
    result = "rocket-silo",
    requester_paste_multiplier = 1
  }
if mods['pyhightech'] then
  data.raw.technology['rocket-control-unit'].prerequisites =
    {
      'basic-electronics'
    }
else
    data.raw.technology['rocket-control-unit'].prerequisites =
    {
      'electronics'
    }
end

data.raw.technology['rocket-control-unit'].unit.ingredients =
	{
		{"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
	}


data.raw.technology['rocket-silo'].prerequisites =
	{
	  "rocket-fuel",
      "rocket-control-unit",
      "low-density-structure"
	}

data.raw.technology['rocket-silo'].unit.ingredients =
	{
		{"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
	}

data.raw['rocket-silo']['rocket-silo'].rocket_result_inventory_size = 5


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

}:add_unlock("tholin-mk01"):add_ingredient({type = "fluid", name = "vacuum", amount = 70}):add_ingredient({type = "item", name = "glass", amount = 4})

RECIPE {
    type = "recipe",
    name = "fill-proto-tholins-vessel",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "empty-proto-tholins-vessel", amount = 1},
        {type = "fluid", name = "proto-tholins", amount = 100},
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
        {type = "item", name = "empty-proto-tholins-vessel", amount = 1},
        {type = "fluid", name = "tholins", amount = 100},
    },
    main_product = "tholins",
}:add_unlock("tholin-mk01")

TECHNOLOGY('kerogen'):remove_prereq('tholin-mk03')

TECHNOLOGY('tholin-mk01'):remove_prereq('coal-processing-1'):remove_prereq('crusher'):add_prereq('rocket-silo'):add_pack('logistic-science-pack'):add_pack('chemical-science-pack')

TECHNOLOGY('tholin-mk02'):add_pack('chemical-science-pack'):add_pack('utility-science-pack')

TECHNOLOGY('tholin-mk03'):add_pack('utility-science-pack')

TECHNOLOGY('tholin-mk04'):add_pack('production-science-pack')
