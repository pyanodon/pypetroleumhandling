DATA {
    type = "autoplace-control",
    category = "resource",
    name = "oil-mk03",
    richness = true,
    order = "c"
}

ENTITY {
    type = "resource",
    name = "oil-mk03",
    icon = "__pypetroleumhandling__/graphics/icons/oil-mk03.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    category = "oil-mk03",
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = 60000,
    normal = 300000,
    infinite_depletion_amount = 12,
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
    collision_box = {{ -4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    -- autoplace = oil_old_autoplace,
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "oil-mk03",
      order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1, -- don't randomize spot size
      additional_richness = 600000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
      has_starting_area_placement = false,
      resource_index = resource_autoplace.get_next_resource_index(),
      regular_rq_factor_multiplier = 1
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__pypetroleumhandling__/graphics/entity/ores/oil-mk03/patch.png",
        priority = "extra-high",
        width = 320,
        height = 253,
        frame_count = 1,
        variation_count = 1
      }
    },
    map_color = {r=0.3, g=0.3, b=0.3},
    map_grid = false
  }