RECIPE {
    type = "recipe",
    name = "oil-boiler-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"lab", 1},
        {"iron-plate", 100},
        {"electric-mining-drill", 3},
        {"gasifier", 1},
        {"small-parts-01", 20},
    },
    results = {
        {"oil-boiler-mk01", 1}
    }
}:add_unlock("oil-machines-mk01")

ITEM {
    type = "item",
    name = "oil-boiler-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-burner-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-extras",
    order = "b",
    place_result = "oil-boiler-mk01",
    stack_size = 10
}

ENTITY {
    type = "boiler",
    name = "oil-boiler-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-burner-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "oil-boiler-mk01"},
    max_health = 200,
    corpse = "boiler-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    mode = "output-to-separate-pipe",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-2.29, -2.29}, {2.29, 2.29}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    target_temperature = 250,
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_connections =
      {
        {type = "input-output", position = {-3.0, 0.0}},
        {type = "input-output", position = {3.0, 0.0}}
      },
      production_type = "input-output",
      filter = "water"
    },
    output_fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = 1,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_connections =
      {
        {type = "output", position = {0, -3.0}}
      },
      production_type = "output",
      filter = "steam"
    },
    energy_consumption = "29.61MW",
    energy_source =
    {
      type = "fluid",
      emissions_per_minute = 30,
      destroy_non_fuel_fluid = false,
	  fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_connections =
		{
			{type = "input", position = {0, 3.0}}
		},
		pipe_covers = DATA.Pipes.covers(false, true, true, true),
		pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
		production_type = "input",
		},
	effectivity = 2,
	burns_fluid = true,
	scale_fluid_usage = true,
	--fluid_usage_per_tick = 2,
      smoke =
      {
        {
          name = "turbine-smoke",
          north_position = util.by_pixel(0, -160),
          south_position = util.by_pixel(0, -160),
          east_position = util.by_pixel(0, -160),
          west_position = util.by_pixel(0, -160),
          frequency = 10,
          starting_vertical_speed = 0.04,
          starting_frame_deviation = 50
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8
      },
      max_sounds_per_type = 3
    },

    structure =
    {
      north =
      {
        layers =
        {
          {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/off.png",
            priority = "extra-high",
            width = 196,
            height = 320,
            shift = util.by_pixel(18, -80),
          },
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/off.png",
            priority = "extra-high",
            width = 196,
            height = 320,
            shift = util.by_pixel(18, -80),
          },
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/off.png",
            priority = "extra-high",
            width = 196,
            height = 320,
            shift = util.by_pixel(18, -80),
          },
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/off.png",
            priority = "extra-high",
            width = 196,
            height = 320,
            shift = util.by_pixel(18, -80),
          },
        }
      },
    },

    fire_flicker_enabled = false,
    fire =
    {
      north =
      {
        filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/anim.png",
        priority = "extra-high",
        frame_count = 80,
        line_length = 10,
        width = 96,
        height = 128,
        animation_speed = 0.4,
        shift = util.by_pixel(-1, -176),
      },
      east =
      {
        filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/anim.png",
        priority = "extra-high",
        frame_count = 80,
        line_length = 10,
        width = 96,
        height = 128,
        animation_speed = 0.4,
        shift = util.by_pixel(-1, -176),
      },
      south =
      {
        filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/anim.png",
        priority = "extra-high",
        frame_count = 80,
        line_length = 10,
        width = 96,
        height = 128,
        animation_speed = 0.4,
        shift = util.by_pixel(-1, -176),
      },
      west =
      {
        filename = "__pypetroleumhandlinggraphics__/graphics/entity/oil-burner-mk01/anim.png",
        priority = "extra-high",
        frame_count = 80,
        line_length = 10,
        width = 96,
        height = 128,
        animation_speed = 0.4,
        shift = util.by_pixel(-1, -176),
      },
    },

fire_glow_flicker_enabled = false,

fire_glow =
{
  north =
  {
    filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
    priority = "extra-high",
    frame_count = 1,
    width = 64,
    height = 64,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
  east =
  {
    filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
    priority = "extra-high",
    frame_count = 1,
    width = 64,
    height = 64,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
  south =
  {
    filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
    priority = "extra-high",
    frame_count = 1,
    width = 64,
    height = 64,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
  west =
  {
    filename = "__pypetroleumhandlinggraphics__/graphics/entity/py-converter-valve.png",
    priority = "extra-high",
    frame_count = 1,
    width = 64,
    height = 64,
    shift = util.by_pixel(-1, -6.5),
    --blend_mode = "additive",
  },
},

    burning_cooldown = 20
  }