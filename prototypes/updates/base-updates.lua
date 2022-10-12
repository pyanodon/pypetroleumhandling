
--add kerogen to stone patches
data.raw.resource["stone"].minable.results = {
    {name = "stone", amount = 1},
    {name = "kerogen",amount = 1}
}

if not mods["pyrawores"] then
    TECHNOLOGY("explosives"):add_pack("chemical-science-pack")
end

TECHNOLOGY("excavation-2"):add_pack("production-science-pack")