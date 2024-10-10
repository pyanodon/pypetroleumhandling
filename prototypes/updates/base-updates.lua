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

--RECIPE("oil-refinery"):add_unlock("scrude")

TECHNOLOGY("oil-processing"):remove_pack("chemical-science-pack")
