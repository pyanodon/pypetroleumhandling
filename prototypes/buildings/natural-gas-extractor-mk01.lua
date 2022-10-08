--[[
  RECIPE {
    type = "recipe",
    name = "natural-gas-extractor-mk01",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"electric-mining-drill", 4},
        {"steel-plate", 30},
        {"electronic-circuit", 10},
        {"engine-unit", 10},
    },
    results = {
        {"natural-gas-extractor-mk01", 1}
    }
}:add_unlock("oil-machines-mk01")
]]--

-- ITEM {
--     type = "item",
--     name = "natural-gas-extractor-mk01",
--     icon = "__pypetroleumhandlinggraphics__/graphics/icons/gas-extractor-mk01.png",
--     icon_size = 64,
--     flags = {},
--     subgroup = "py-petroleum-handling-buildings-mk01",
--     order = "a",
--     place_result = "natural-gas-extractor-mk01",
--     stack_size = 10
-- }

ENTITY {
    type = "mining-drill",
    name = "natural-gas-extractor-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/gas-extractor-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "natural-gas-seep-mk01"},
    resource_categories = {"natural-gas"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{ -3.5, -3.5}, {3.5, 3.5}},
    --drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions_per_second_per_watt = 10 / 90000,
      usage_priority = "secondary-input"
    },
    output_fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_connections =
      {
        {
          positions = { {0, -4}, {4, -0}, {-0, 4}, {-4, 0} }
        }
      }
    },
    energy_usage = "90kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity"},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    --base_render_layer = "lower-object-above-shadow",
    animations = {
      layers = {
          {
              filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/raw.png",
              width = 224,
              height = 320,
              line_length = 7,
              frame_count = 30,
              animation_speed = 1 / 5,
              shift = util.by_pixel(0, -48)
          },
          {
              filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/mask.png",
              width = 224,
              height = 320,
              line_length = 7,
              frame_count = 30,
              animation_speed = 1 / 5,
              tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
              shift = util.by_pixel(0, -48)
          },
          {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/ao.png",
            width = 288,
            height = 352,
            line_length = 7,
            frame_count = 30,
            animation_speed = 1 / 5,
            shift = util.by_pixel(0, -32)
          },
          {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/l.png",
            width = 224,
            height = 320,
            line_length = 7,
            frame_count = 30,
            animation_speed = 1 / 5,
            draw_as_glow = true,
            shift = util.by_pixel(0, -48)
          },
          {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/gas-extractor/sh.png",
            width = 288,
            height = 352,
            line_length = 1,
            frame_count = 1,
            repeat_count = 30,
            animation_speed = 1 / 5,
            draw_as_shadow = true,
            shift = util.by_pixel(0, -32)
          },
  },
},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__pypetroleumhandlinggraphics__/sounds/gas-extractor.ogg", volume = 0.3 },
      apparent_volume = 0.5
    },
    fast_replaceable_group = "natural-gas-extractor",
  }
