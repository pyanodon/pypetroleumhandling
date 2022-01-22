local resource_autoplace = require("resource-autoplace");

DATA {
    type = "autoplace-control",
    category = "resource",
    name = "bitumen-seep",
    richness = false,
    order = "c"
}

ENTITY {
    type = "resource",
    name = "bitumen-seep",
    icon = "__base__/graphics/icons/crude-oil-resource.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    category = "bitumen-seep",
    order="a-b-a",
    infinite = false,
    highlight = true,
    --infinite_depletion_amount = 5,
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_time = 1,
      results = {}
      -- {
      --   {
      --     type = "fluid",
      --     name = "drilling-waste",
      --     amount_min = 1,
      --     amount_max = 1,
      --     probability = 0
      --   }
      -- }
    },
    --collision_box = {{ -2.4, -2.4}, {2.4, 2.4}},
    collision_box = {{ -5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{ -2.4, -2.4}, {2.4, 2.4}},
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "bitumen-seep",
      order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
      base_density = 3,
      base_spots_per_km2 = 1.8,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1, -- don't randomize spot size
      --additional_richness = 5000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/crude-oil/crude-oil.png",
        priority = "extra-high",
        width = 74,
        height = 60,
        frame_count = 4,
        variation_count = 1,
        shift = util.by_pixel(0, -2),
        hr_version =
        {
          filename = "__base__/graphics/entity/crude-oil/hr-crude-oil.png",
          priority = "extra-high",
          width = 148,
          height = 120,
          frame_count = 4,
          variation_count = 1,
          shift = util.by_pixel(0, -2),
          scale = 0.5,
        }
      }
    },
    map_color = {0.78, 0.2, 0.77},
    map_grid = false
  }
