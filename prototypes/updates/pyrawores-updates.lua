--BUILDINDS--

RECIPE("oil-sand-extractor-mk01"):add_ingredient({type = "item", name = "lead-plate", amount = 15}):add_ingredient({type = "item", name = "nexelit-plate", amount = 5})
RECIPE("oil-sand-extractor-mk02"):add_ingredient({type = "item", name = "duralumin", amount = 40}):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("oil-sand-extractor-mk03"):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):add_ingredient({type = "item", name = "aluminium-plate", amount = 40})
RECIPE("oil-sand-extractor-mk04"):add_ingredient({type = "item", name = "super-steel", amount = 20})


--RECIPES--

RECIPE("oil-sand-slurry"):change_category("hydroclassifier")
RECIPE("py-tank-10000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")