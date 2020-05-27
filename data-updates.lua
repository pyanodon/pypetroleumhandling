require("__stdlib__/stdlib/data/data").Util.create_data_globals()

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
end

if mods["pycoalprocessing"] then
    require("prototypes/updates/pycoalprocessing-updates")
	if not mods['pyrawores'] then
		TECHNOLOGY('advanced-material-processing'):remove_pack('logistic-science-pack')
		TECHNOLOGY('oil-machines-mk01'):remove_prereq('crusher')
	end
end

if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end

if mods["pyindustry"] then
    require("prototypes/updates/pyindustry-updates")
end

--ADAPTATIONS

--RECIPES UPDATES

RECIPE("lab-instrument"):add_ingredient({type = "item", name = "small-parts-01", amount = 5}):add_ingredient({type = "item", name = "rubber", amount = 10})
RECIPE("chemical-science-pack"):add_ingredient({type = "item", name = "rubber", amount = 10})
RECIPE("electric-engine-unit"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("engine-unit"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-01", amount = 4}):set_fields {energy_required = 15}
RECIPE("assembling-machine-2"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})
RECIPE("assembling-machine-3"):add_ingredient({type = "item", name = "small-parts-03", amount = 15})
RECIPE("fast-transport-belt"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-02", amount = 2})
RECIPE("fast-underground-belt"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-02", amount = 6})
RECIPE("fast-splitter"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-02", amount = 6})
RECIPE("express-transport-belt"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-03", amount = 4})
RECIPE("express-underground-belt"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-03", amount = 6})
RECIPE("express-splitter"):remove_ingredient("small-parts-01"):add_ingredient({type = "item", name = "small-parts-03", amount = 6})
RECIPE("red-wire"):add_ingredient({type = "item", name = "rubber", amount = 1})
RECIPE("green-wire"):add_ingredient({type = "item", name = "rubber", amount = 1})
RECIPE("carbon-filter"):remove_ingredient("assembling-machine-2"):add_ingredient({type = "item", name = "assembling-machine-1", amount = 2})
RECIPE("rectisol"):remove_ingredient("assembling-machine-2"):add_ingredient({type = "item", name = "assembling-machine-1", amount = 2})
RECIPE("small-parts-03"):replace_ingredient("glass", "glass-fiber"):replace_ingredient("tin-plate", "aerogel")
RECIPE("tall-oil-combustion"):remove_unlock('energy-2'):add_unlock('energy-1')

--Base Updates

local remove_old_oil_stuff =
	{
	['pumpjack'] = true,
	['oil-refinery'] = true,
	['basic-oil-processing'] = true,
	['advanced-oil-processing'] = true,
	['heavy-oil-cracking'] = true,
	['light-oil-cracking'] = true,
	['coal-liquefaction'] = true
	}

local recipes_to_keep = {}

--log(serpent.block(remove_old_oil_stuff))

for _, recipe in pairs(data.raw.technology['oil-processing'].effects) do
	--log('hit')
	if recipe.type == 'unlock-recipe' then
		--log('hit')
		--log(recipe.recipe)
		if remove_old_oil_stuff[recipe.recipe] == nil then
			--log('hit')
			table.insert(recipes_to_keep, recipe)
		end
	end
end

data.raw.technology['oil-processing'].effects = recipes_to_keep
recipes_to_keep = {}

for _, recipe in pairs(data.raw.technology['advanced-oil-processing'].effects) do
	--log('hit')
	if recipe.type == 'unlock-recipe' then
		--log('hit')
		--log(recipe.recipe)
		if remove_old_oil_stuff[recipe.recipe] == nil then
			--log('hit')
			table.insert(recipes_to_keep, recipe)
		end
	end
end

data.raw.technology['advanced-oil-processing'].effects = recipes_to_keep
recipes_to_keep = {}

for _, recipe in pairs(data.raw.technology['coal-liquefaction'].effects) do
	--log('hit')
	if recipe.type == 'unlock-recipe' then
		--log('hit')
		if remove_old_oil_stuff[recipe.recipe] == nil then
			--log('hit')
			table.insert(recipes_to_keep, recipe)
		end
	end
end

data.raw.technology['coal-liquefaction'].effects = recipes_to_keep

data.raw.resource['crude-oil'].autoplace = nil
data.raw['autoplace-control']['crude-oil'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['crude-oil'] then
      preset.basic_settings.autoplace_controls['crude-oil'] = nil
    end
end


--Remove space science from satellite
data.raw.item.satellite.rocket_launch_product =
    {
        type = 'item',
        name = 'tholins-barrel',
        amount = 500
    }

RECIPE {
    type = 'recipe',
    name = 'satellite',
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
	  {'proto-tholins-barrel', 500},
	  {'empty-barrel', 1000}
    },
	results =
		{
			{type = 'item', name = "satellite", amount = 3}
		},
    requester_paste_multiplier = 1
  }:add_unlock('tholin-mk01')

data.raw.technology['rocket-control-unit'].prerequisites =
	{
		'advanced-electronics'
	}

data.raw.technology['rocket-control-unit'].unit.ingredients =
	{
		{"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
	}


data.raw.technology['rocket-silo'].prerequisites =
	{
	  'advanced-electronics',
	  "rocket-fuel",
	  "rocket-control-unit"
	}

data.raw.technology['rocket-silo'].unit.ingredients =
	{
		{"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
	}

data.raw['rocket-silo']['rocket-silo'].rocket_result_inventory_size = 50
