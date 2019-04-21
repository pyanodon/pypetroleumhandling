require("__stdlib__/stdlib/data/data").Util.create_data_globals()

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
end

if mods["pycoalprocessing"] then
    require("prototypes/updates/pycoalprocessing-updates")
end

if mods["pyrawores"] then
    require("prototypes/updates/pyrawores-updates")
end

if mods["pyindustry"] then
    require("prototypes/updates/pyindustry-updates")
end

--ADAPTATIONS


--RECIPES UPDATES

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

RECIPE("tall-oil-combustion"):remove_unlock('energy-2'):add_unlock('energy-1')