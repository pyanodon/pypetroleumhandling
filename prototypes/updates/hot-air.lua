local hotair = {
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
    icon_size = 64,
    shift = {7.5, -7.5},
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
    local afrecipes = {}

    --gather recipes for the casting unit
    for _, recipe in pairs(data.raw.recipe) do
        if recipe.category == "casting" and not hab[recipe.name] then
            table.insert(afrecipes, table.deepcopy(recipe))
        end
    end

    for _, recipe in pairs(extra_recipes) do
        if data.raw.recipe[recipe] then
            table.insert(afrecipes, table.deepcopy(data.raw.recipe[recipe]))
        end
    end

    --cycle thru afrecipes to make changes
    for _, recipe in pairs(afrecipes) do
        if recipe.normal or recipe.expensive then
            error("Don\'t use this")
        end

        --add ingredient
        local result = recipe.main_product or recipe.results[1].name
        local index = recipe.category == "glassworks" and 3 or nil

        if recipe.ingredients[1] ~= nil then
            if data.raw.item["solid-hot-air"] ~= nil then
                table.insert(recipe.ingredients, {type = "item", name = "solid-hot-air", amount = 50})
            else
                table.insert(
                    recipe.ingredients,
                    {type = "fluid", name = "hot-air", amount = 50, fluidbox_index = index}
                )
            end
        elseif recipe.ingredients[2] ~= nil then
            if data.raw.item["solid-hot-air"] ~= nil then
                table.insert(recipe.ingredients, {type = "item", name = "solid-hot-air", amount = 50})
            else
                table.insert(
                    recipe.ingredients,
                    {type = "fluid", name = "hot-air", amount = 50, fluidbox_index = index}
                )
            end
        end

        --find tech unlock of og recipe
        local unlock, effect_index
        for _, t in pairs(data.raw.technology) do
            --log(serpent.block(t))
            if t.effects ~= nil then
                for i, u in pairs(t.effects) do
                    if u.recipe == recipe.name then
                        unlock = t.name
                        effect_index = i
                        break
                        --log(unlock)
                    end
                end
            end
        end

        -- to prod or not to prod
        allow_productivity = false
        for _, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "mold" then
                allow_productivity = true
                break
            end
        end
        if allow_productivity then
            data.raw.recipe[recipe.name].hidden = true
        else
            recipe:multiply_result_amount(result, 1.25)
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
                order = recipe.order and (recipe.order .. "-a") or nil,
                allow_productivity = allow_productivity,
            }
            --
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

RECIPE("hotair-flask"):remove_unlock("py-science-pack-1"):add_unlock("hot-air-mk01").enabled = false
if RECIPE["hotair-molten-glass"] then RECIPE("hotair-molten-glass"):remove_unlock("glass"):add_unlock("hot-air-mk01") end
if RECIPE["hotair-empty-petri-dish"] then RECIPE("hotair-empty-petri-dish"):remove_unlock("petri-dish"):add_unlock("hot-air-mk01") end
