py.global_item_replacer("iron-gear-wheel", "small-parts-01", {"iron-gear-wheel", "small-parts-01", "casting-gear"})

require "prototypes/updates/base-updates"
require "prototypes/updates/pycoalprocessing-updates"
require "prototypes/updates/pyfusionenergy-updates"
require "prototypes/updates/pyindustry-updates"
require "prototypes/updates/compat-updates"

if mods["pyrawores"] then
    require "prototypes/updates/pyrawores-updates"
end

if mods["pyhightech"] then
    require "prototypes/updates/pyhightech-updates"
end

require "prototypes/updates/tholin-overhaul"

--RECIPES UPDATES

RECIPE("lab-instrument"):add_ingredient {type = "item", name = "small-parts-01", amount = 5}:add_ingredient {type = "item", name = "rubber", amount = 10}
RECIPE("chemical-science-pack"):add_ingredient {type = "item", name = "rubber", amount = 10}
RECIPE("electric-engine-unit"):add_ingredient {type = "item", name = "small-parts-02", amount = 10}
RECIPE("engine-unit"):remove_ingredient("small-parts-01"):add_ingredient {type = "item", name = "small-parts-01", amount = 40}:set_fields {energy_required = 15}
RECIPE("assembling-machine-3"):add_ingredient {type = "item", name = "small-parts-02", amount = 15}
RECIPE("fast-transport-belt"):remove_ingredient("small-parts-01"):add_ingredient {type = "item", name = "small-parts-02", amount = 2}
RECIPE("fast-underground-belt"):remove_ingredient("small-parts-01"):add_ingredient {type = "item", name = "small-parts-02", amount = 6}
RECIPE("fast-splitter"):remove_ingredient("small-parts-01"):add_ingredient {type = "item", name = "small-parts-02", amount = 6}
RECIPE("express-transport-belt"):remove_ingredient("small-parts-01"):add_ingredient {type = "item", name = "small-parts-03", amount = 4}
RECIPE("express-underground-belt"):remove_ingredient("small-parts-01"):add_ingredient {type = "item", name = "small-parts-03", amount = 6}
RECIPE("express-splitter"):remove_ingredient("small-parts-01"):add_ingredient {type = "item", name = "small-parts-03", amount = 6}
RECIPE("carbon-filter"):remove_ingredient("assembling-machine-2"):add_ingredient {type = "item", name = "assembling-machine-1", amount = 2}
RECIPE("rectisol"):remove_ingredient("assembling-machine-2"):add_ingredient {type = "item", name = "assembling-machine-1", amount = 2}
RECIPE("small-parts-03"):replace_ingredient("glass", "glass-fiber"):replace_ingredient("tin-plate", "aerogel")
RECIPE("utility-science-pack"):add_ingredient {type = "item", name = "small-parts-03", amount = 30}
RECIPE("rail"):replace_ingredient("iron-stick", {type = "item", name = "bolts", amount = 4})

if data.data_crawler then
    data.script_enabled = data.script_enabled or {}
    table.insert(data.script_enabled, "tar-patch")
    if mods["pyhightech"] then table.insert(data.script_enabled, "crash-site-assembling-machine-1-repaired") end
end

py.allow_productivity {
    "kevlar-2",
    "small-parts-02",
    "small-parts-03",
}

if register_cache_file ~= nil then
    register_cache_file({"pycoalprocessing", "pyfusionenergy", "pyindustry", "pypetroleumhandling"}, "__pypetroleumhandling__/cached-configs/pycoalprocessing+pyfusionenergy+pyindustry+pypetroleumhandling")
    register_cache_file({"pycoalprocessing", "pyfusionenergy", "pyindustry", "pyhightech", "pypetroleumhandling"}, "__pypetroleumhandling__/cached-configs/pycoalprocessing+pyfusionenergy+pyhightech+pyindustry+pypetroleumhandling")
    register_cache_file({"pycoalprocessing", "pyfusionenergy", "pyindustry", "pyrawores", "pypetroleumhandling"}, "__pypetroleumhandling__/cached-configs/pycoalprocessing+pyfusionenergy+pyindustry+pypetroleumhandling+pyrawores")
    register_cache_file({"pycoalprocessing", "pyfusionenergy", "pyindustry", "pyrawores", "pyhightech", "pypetroleumhandling"}, "__pypetroleumhandling__/cached-configs/pycoalprocessing+pyfusionenergy+pyhightech+pyindustry+pypetroleumhandling+pyrawores")
end
