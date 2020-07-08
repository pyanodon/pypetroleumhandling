local resource_autoplace = require("resource-autoplace");

DATA {
    type = "autoplace-control",
    category = "resource",
    name = "oil-mk04",
    richness = true,
    order = "c"
}

ENTITY {
    type = "resource",
    name = "oil-mk04",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-mk04.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    category = "oil-mk04",
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = 250000,
    normal = 600000,
    infinite_depletion_amount = 15,
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
          amount_min = 10,
          amount_max = 10,
          probability = 1
        }
      }
    },
    collision_box = {{ -5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{ -5.4, -5.4}, {5.4, 5.4}},
    -- autoplace = oil_old_autoplace,
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "oil-mk04",
      order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1, -- don't randomize spot size
      additional_richness = 900000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__pypetroleumhandlinggraphics__/graphics/entity/ores/oil-mk04/patch.png",
        priority = "extra-high",
        width = 384,
        height = 437,
        frame_count = 1,
        variation_count = 1
      }
    },
    map_color = {r=0.1, g=0.1, b=0.1},
    map_grid = false
  }
