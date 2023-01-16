data:extend(
{
	{
		type = "tips-and-tricks-item",
		name = "pypetroleumhandling",
		category = "wiki-py",
		indent = 1,
		order = "f",
		is_title = true,
	},
	{
		type = "tips-and-tricks-item",
		name = "bitumen-seep",
		category = "wiki-py",
		indent = 2,
		order = "fa",
        tag = '[entity=tar-seep-mk01]',
        trigger =
        {
			type = "or",
			triggers =
            {
                {
                    type = "unlock-recipe",
                    recipe = "oil-derrick-mk01"
                },
                {
                    type = "unlock-recipe",
                    recipe = "tar-extractor-mk01"
                },
                {
                    type = "unlock-recipe",
                    recipe = "natural-gas-seep-mk01"
                },
            }
        },
	},
	{
		type = "tips-and-tricks-item",
		name = "tholin",
		category = "wiki-py",
		indent = 2,
		order = "fb",
        tag = '[entity=tholin-atm-mk01]',
        trigger =
        {
            type = "unlock-recipe",
            recipe = "tholin-capsule"
        },
	},
})
