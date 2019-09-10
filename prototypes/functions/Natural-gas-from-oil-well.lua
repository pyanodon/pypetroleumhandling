--Hidden Converter Valve
ITEM {
    type = "item",
    name = "py-converter-valve",
    icon = "__pyindustry__/graphics/icons/check-valve.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-pipes",
    order = "pipe[niobium]-flow-a",
    place_result = "py-converter-valve",
    stack_size = 50
}

ENTITY {
    type = "assembling-machine",
    name = "py-converter-valve",
    icon = "__pyindustry__/graphics/icons/check-valve.png",
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "py-converter-valve"},
    max_health = 100,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	selectable_in_game = false,
    result_inventory_size = 1,
    crafting_speed = 20,
	crafting_categories = {"converter-valve"},
    source_inventory_size = 1,
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = DATA.Pipes.covers(false, true, true, true),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -1} }}
      },
      {
        production_type = "output",
        pipe_covers = DATA.Pipes.covers(false, true, true, true),
        base_level = 1,
        pipe_connections = {{ position = {0, 1} }}
      },
    },
    energy_source =
    {
      type = "void",
    },
    energy_usage = "30kW",
    animation =
    {
      north =
      {
        filename = "__pypetroleumhandling__/graphics/entity/py-converter-valve.png",
        priority = "extra-high",
        frame_count = 1,
        width = 64,
        height = 64,
	    shift = {0, -0}
      },
	  east =
      {
        filename = "__pypetroleumhandling__/graphics/entity/py-converter-valve.png",
        priority = "extra-high",
		x = 0,
        frame_count = 1,
        width = 64,
        height = 64,
	    shift = {0, 0}
      },
	  south =
      {
        filename = "__pypetroleumhandling__/graphics/entity/py-converter-valve.png",
        priority = "extra-high",
		x = 0,
        frame_count = 1,
        width = 64,
        height = 64,
	    shift = {0, -0.05}
      },
	  west =
      {
        filename = "__pypetroleumhandling__/graphics/entity/py-converter-valve.png",
        priority = "extra-high",
		x = 0,
        frame_count = 1,
        width = 64,
        height = 64,
	    shift = {0, 0}
      },
	},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    }

--Crude to Nat Gas hidden recipes
RECIPE {
    type = "recipe",
    name = "oil-to-gas",
    category = "converter-valve",
    enabled = false,
	hidden = true,
    energy_required = .1,
    ingredients = {
        {type = "fluid", name = "crude-oil", amount = 10},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 10},
    },
    main_product = "natural-gas",
    icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 32,
    --subgroup = "py-petroleum-handling-recipes",
    order = "a"
}

RECIPE {
    type = "recipe",
    name = "oil-to-oil",
    category = "converter-valve",
    enabled = false,
	hidden = true,
    energy_required = .1,
    ingredients = {
        {type = "fluid", name = "crude-oil", amount = 10},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 10},
    },
    main_product = "crude-oil",
    icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 32,
    --subgroup = "py-petroleum-handling-recipes",
    order = "a"
}

--Adjust Oil Derrick Output position
--mk01
data.raw["mining-drill"]["oil-derrick-mk01"].collision_box = {{-1.4, -1.4}, {1.4, 1.4}}
data.raw["mining-drill"]["oil-derrick-mk01"].output_fluid_box.pipe_connections[1].positions = { {0, -2}, {2, 0}, {0, 2}, {-2, 0} }
--mk02
data.raw["mining-drill"]["oil-derrick-mk02"].collision_box = {{-2.4, -2.4}, {2.4, 2.4}}
data.raw["mining-drill"]["oil-derrick-mk02"].output_fluid_box.pipe_connections[1].positions = { {0, -3}, {3, 0}, {0, 3}, {-3, 0} }
--mk03
data.raw["mining-drill"]["oil-derrick-mk03"].collision_box = {{-3.4, -3.4}, {3.4, 3.4}}
data.raw["mining-drill"]["oil-derrick-mk03"].output_fluid_box.pipe_connections[1].positions = { {-1, -4}, {4, -1}, {1, 4}, {-4, 1} }
--mk04
data.raw["mining-drill"]["oil-derrick-mk04"].collision_box = {{-4.4, -4.4}, {4.4, 4.4}}
data.raw["mining-drill"]["oil-derrick-mk04"].output_fluid_box.pipe_connections[1].positions = { {0, -5}, {5, 0}, {0, 5}, {-5, 0} }