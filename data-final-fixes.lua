local GIR = require('prototypes/functions/functions')

GIR.global_item_replacer("iron-gear-wheel","small-parts-01",{"iron-gear-wheel","small-parts-01","casting-gear"})

--RECIPES UPDATES
--hot air blacklist
-- comment out/delete recipes that are ok for hot air increase
--anything left active in list will be ingored when adding hot air to advanced furnace recipes
local hablist = {
    'chromium-rejects',
    'chromium-01',
    'copper-plate-4',
    'empty-comb-2'
}

GIR.HAB(hablist)

local extra_hot_air_recipes =
    {
        'niobium-plate',
        'molybdenum-plate',
        --glass hot air recipes
        'flask',
        'flask-2',
        'flask-3',
        'empty-petri-dish',
        'glass-core',
        'molten-glass',
        'glass-fiber',
        'lens',
        --non molten plates
        'gold-plate',
        'ndfeb-alloy',
        're-tin',
        'crco-alloy',
        'super-alloy',
        --pyal petri dishes
        'empty-petri-dish'
    }
--add hot air
GIR.hotairrecipes(extra_hot_air_recipes)

if settings.startup['fine-oil'].value then
    --data.raw.resource['natural-gas'].infinite = false
    if data.raw.resource['oil-mk01'] then
        data.raw.resource['oil-mk01'].infinite = false
    end
    if data.raw.resource['oil-mk02'] then
        data.raw.resource['oil-mk02'].infinite = false
    end
    if data.raw.resource['oil-mk03'] then
        data.raw.resource['oil-mk03'].infinite = false
    end
    if data.raw.resource['oil-mk04'] then
        data.raw.resource['oil-mk04'].infinite = false
    end
    if data.raw.resource['tar-patch'] then
        data.raw.resource['tar-patch'].infinite = false
    end
    if data.raw.resource['crude-oil'] then
        data.raw.resource['crude-oil'].infinite = false
    end
end
