local hotair = {
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
    icon_size = 64,
    shift = {-7.5, -7.5},
    scale = 0.25
}

--hot air blacklist
--comment out/delete recipes that are ok for hot air increase
--anything left active in list will be ingored when adding hot air to advanced furnace recipes
local hab = table.invert {
    "chromium-rejects",
    "chromium-01",
    "copper-plate-4",
    "empty-comb-2",
    "py-steel",
    "small-lamp-casting"
}

--add 50 hot-air ingredient, output +25%
local function hotairrecipes(extra_recipes)
    --gather recipes for the casting unit
    local recipes = table.deepcopy(data.raw.recipe)
    local afrecipes = {}
    local afrecipesnames = {}
    local afrcount = 0
    local altrec = 0

    for _, recipe in pairs(recipes) do
        if recipe.category == "casting" and not hab[recipe.name] then
            table.insert(afrecipes, recipe)
            table.insert(afrecipesnames, recipe.name)
        end
    end

    for _, recipe in pairs(extra_recipes) do
        if data.raw.recipe[recipe] then
            table.insert(afrecipes, table.deepcopy(data.raw.recipe[recipe]))
            table.insert(afrecipesnames, recipe.name)
        end
    end

    --cycle thru afrecipes to make changes
    for _, recipe in pairs(afrecipes) do
        if recipe.normal or recipe.expensive then
            error("Don\'t use this")
        end

        afrcount = afrcount + 1
        --add ingredient
        local result = recipe.main_product or recipe.result or recipe.results[1][1] or recipe.results[1].name
        local index = recipe.category == "glassworks" and 3 or nil

        if recipe.ingredients[1] ~= nil then
            if recipe.ingredients[1].name == nil then
                local ing = recipe.ingredients
                recipe.ingredients = {}
                table.insert(recipe.ingredients, {type = "item", name = ing[1][1], amount = ing[1][2]})
                if data.raw.item["solid-hot-air"] ~= nil then
                    table.insert(recipe.ingredients, {type = "item", name = "solid-hot-air", amount = 50})
                else
                    table.insert(
                        recipe.ingredients,
                        {type = "fluid", name = "hot-air", amount = 50, fluidbox_index = index}
                    )
                end
            elseif recipe.ingredients[1].name then
                if data.raw.item["solid-hot-air"] ~= nil then
                    table.insert(recipe.ingredients, {type = "item", name = "solid-hot-air", amount = 50})
                else
                    table.insert(
                        recipe.ingredients,
                        {type = "fluid", name = "hot-air", amount = 50, fluidbox_index = index}
                    )
                end
            end
        elseif recipe.ingredients[2] ~= nil then
            if recipe.ingredients[2].name == nil then
                local ing = recipe.ingredients
                recipe.ingredients = {}
                table.insert(recipe.ingredients, {type = "item", name = ing[2][1], amount = ing[2][2]})
                if data.raw.item["solid-hot-air"] ~= nil then
                    table.insert(recipe.ingredients, {type = "item", name = "solid-hot-air", amount = 50})
                else
                    table.insert(
                        recipe.ingredients,
                        {type = "fluid", name = "hot-air", amount = 50, fluidbox_index = index}
                    )
                end
            elseif recipe.ingredients[2].name then
                if data.raw.item["solid-hot-air"] ~= nil then
                    table.insert(recipe.ingredients, {type = "item", name = "solid-hot-air", amount = 50})
                else
                    table.insert(
                        recipe.ingredients,
                        {type = "fluid", name = "hot-air", amount = 50, fluidbox_index = index}
                    )
                end
            end
        end
        recipe:multiply_result_amount(result, 1.25)

        --find tech unlock of og recipe
        local unlock
        for _, t in pairs(data.raw.technology) do
            --log(serpent.block(t))
            if t.effects ~= nil then
                for _, u in pairs(t.effects) do
                    if u.recipe == recipe.name then
                        unlock = t.name
                        --log(unlock)
                    end
                end
            end
        end
        --log(serpent.block(recipe))
        local hname = "hotair-" .. recipe.name
        local category
        if recipe.category ~= nil then
            category = recipe.category
        end
        if recipe.results then
            RECIPE {
                type = "recipe",
                name = hname,
                category = category,
                enabled = false,
                energy_required = recipe.energy_required,
                ingredients = recipe.ingredients,
                results = recipe.results,
                icons = py.add_corner_icon_to_recipe(recipe, hotair),
                --icon_size = 32,
                main_product = recipe.main_product or nil,
                subgroup = recipe.subgroup,
                order = recipe.order and (recipe.order .. "-a") or nil
            }
            --
            altrec = altrec + 1
            if recipe.enabled == false then
                if unlock ~= nil then
                    table.insert(data.raw.technology[unlock].effects, {type = "unlock-recipe", recipe = hname})
                end
            else
                data.raw.recipe[hname].enabled = true
            end
        end
    end
end

local extra_hot_air_recipes = {
    --'niobium-plate',
    --'molybdenum-plate',
    --glass hot air recipes
    "flask",
    "flask-2",
    "flask-3",
    "glass-core",
    "molten-glass",
    "glass-fiber",
    "lens",
    --non molten plates
    "gold-plate",
    "ndfeb-alloy",
    "re-tin",
    "crco-alloy",
    "super-alloy",
    --pyal petri dishes
    "empty-petri-dish"
}

--add hot air
hotairrecipes(extra_hot_air_recipes)

RECIPE("hotair-flask"):add_unlock("hot-air-mk01").enabled = false
if RECIPE["hotair-molten-glass"] then RECIPE("hotair-molten-glass"):remove_unlock("glass"):add_unlock("hot-air-mk01") end
if RECIPE["hotair-empty-petri-dish"] then RECIPE("hotair-empty-petri-dish"):remove_unlock("petri-dish"):add_unlock("hot-air-mk01") end
