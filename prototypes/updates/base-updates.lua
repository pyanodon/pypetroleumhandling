--add kerogen to stone patches
if data.raw.resource.stone then
    data.raw.resource["stone"].minable.results = {
        {type = "item", name = "stone",   amount = 1},
        {type = "item", name = "kerogen", amount = 1}
    }
end

if not mods["pyrawores"] then
    TECHNOLOGY("explosives"):add_pack("chemical-science-pack")
    TECHNOLOGY("cliff-explosives"):add_pack("chemical-science-pack")
    TECHNOLOGY("land-mine"):add_pack("chemical-science-pack")
    TECHNOLOGY("rocketry"):add_pack("chemical-science-pack")
end

TECHNOLOGY("excavation-2"):add_pack("production-science-pack")
TECHNOLOGY("excavation-3"):add_pack("military-science-pack"):add_pack("utility-science-pack"):add_pack("space-science-pack")

data.raw.item["oil-refinery"].hidden = true
data.raw.item["pumpjack"].hidden = true
TECHNOLOGY("oil-processing"):remove_pack("chemical-science-pack")

data.raw["rocket-silo"]["rocket-silo"].rocket_parts_required = 15

local remove_old_oil_stuff = {
    ["pumpjack"] = true,
    ["oil-refinery"] = true,
    ["basic-oil-processing"] = true,
    ["advanced-oil-processing"] = true,
    ["heavy-oil-cracking"] = true,
    ["light-oil-cracking"] = true,
    ["coal-liquefaction"] = true
}

local vanilla_techs_to_delete_recipes_from = {
    "oil-processing",
    "advanced-oil-processing",
    "coal-liquefaction",
}

for _, tech_name in pairs(vanilla_techs_to_delete_recipes_from) do
    local tech = data.raw.technology[tech_name]
    local recipes_to_keep = {}
    for _, recipe in pairs(tech.effects) do
        if recipe.type == "unlock-recipe" then
            if remove_old_oil_stuff[recipe.recipe] then
                recipe.hidden = true
                recipe.hidden_in_factoriopedia = true
            else
                table.insert(recipes_to_keep, recipe)
            end
        end
    end
    tech.effects = recipes_to_keep
end

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["crude-oil"] = nil
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["crude-oil"] = nil
data.raw["autoplace-control"]["crude-oil"] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls["crude-oil"] then
        preset.basic_settings.autoplace_controls["crude-oil"] = nil
    end
end
