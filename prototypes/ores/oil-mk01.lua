-- local resource_autoplace = require("resource-autoplace");
--[[
DATA {
    type = "autoplace-control",
    category = "resource",
    name = "oil-mk01",
    richness = true,
    order = "c"
}
]]--

ENTITY {
    type = "resource",
    name = "oil-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/oil-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    category = "oil-mk01",
    order="a-b-a",
    infinite = false,
    highlight = true,
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
    collision_box = {{ -2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{ -2.4, -2.4}, {2.4, 2.4}},
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__pypetroleumhandlinggraphics__/graphics/entity/ores/oil-mk01/patch.png",
        priority = "extra-high",
        width = 160,
        height = 160,
        frame_count = 1,
        variation_count = 1
      }
    },
    map_color = {r=0.1, g=0.1, b=0.1},
    map_grid = false
  }
