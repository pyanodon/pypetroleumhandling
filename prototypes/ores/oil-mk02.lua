-- local resource_autoplace = require 'resource-autoplace';
--[[
data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "oil-mk02",
    richness = true,
    order = "c"
}}
]] --

ENTITY {
  type = "resource",
  name = "oil-mk02",
  icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-mk02.png",
  icon_size = 32,
  flags = {"placeable-neutral"},
  category = "oil-mk02",
  order = "a-b-a",
  infinite = false,
  highlight = true,
  infinite_depletion_amount = 10,
  resource_patch_search_radius = 12,
  tree_removal_probability = 0.7,
  tree_removal_max_distance = 32 * 32,
  minable =
  {
    mining_time = 1,
    results =
    {
      {
        type = "fluid",
        name = "crude-oil",
        amount = 100,
      }
    }
  },
  collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
  selection_box = {{-3.4, -3.4}, {3.4, 3.4}},
  --[[
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "oil-mk02",
      order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1, -- don't randomize spot size
      additional_richness = 400000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1
    },
    ]] --
  stage_counts = {0},
  stages =
  {
    sheet =
    {
      filename = "__pypetroleumhandlinggraphics__/graphics/entity/ores/oil-mk02/patch.png",
      priority = "extra-high",
      width = 224,
      height = 224,
      frame_count = 1,
      variation_count = 1
    }
  },
  map_color = {r = 0.1, g = 0.1, b = 0.1},
  map_grid = false
}
