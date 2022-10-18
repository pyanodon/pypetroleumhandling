local noise = require("noise")

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
    autoplace = {
      name = "bitumen-seep",
      order = "c-bitumen-seep", -- Other resources are "b"; oil won't get placed if something else is already there.
      -- We return the chance of spawning on any given tile here
      probability_expression = noise.define_noise_function( function(x, y, tile, map)
        -- This is the user's map setting for the frequency of this ore
        local frequency_multiplier = noise.var("control-setting:bitumen-seep:frequency:multiplier")
        -- 1 in 32 chunks (each chunk is 64x64 tiles)
        local desired_frequency = 1 / (64 * 64^2)
        -- Our final chance, likely a very, very small decimal
        return desired_frequency * frequency_multiplier
      end),
      -- We return the richness here, which is just the quantity the resource tile yields
      richness_expression = noise.define_noise_function( function(x, y, tile, map)
          -- This is the user's map setting for richness of this ore
          -- We ignore size here because we're always a single tile resource
          local richness_multiplier = noise.var("control-setting:bitumen-seep:richness:multiplier")
          -- This is the distance from the starting position, which is how vanilla scales ore yield
          local distance_value = noise.var("distance")
          -- This is our multiplier for the above, determining the yield gains over distance
          local scalar = 2^16
          -- Add it all together or what is likely a pretty big number
          return distance_value * scalar * richness_multiplier
      end)
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
