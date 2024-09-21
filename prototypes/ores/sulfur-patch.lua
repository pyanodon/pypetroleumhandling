local noise = require 'noise'
data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "sulfur-patch",
    richness = true,
    order = "r-su"
}}

data:extend{{
    type = "noise-layer",
    name = "sulfur-patch"
}}

data:extend{{
    type = "resource",
    name = "sulfur-patch",
    category = "sulfur-patch",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/ores/sulfur-patch.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 1, g = 0.823, b = 0.0},
    highlight = true,
    map_grid = false,
    minable = {

        -- mining_particle = "sulfur-patch-particle",
        mining_time = 2,
        results = {
            {type = "item", name = "sulfur", amount = 1}
        },
    },
    resource_patch_search_radius = 12,
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "sulfur-patch",
        order = "b-sulfur-patch",
        control = "sulfur-patch",
        -- We return the chance of spawning on any given tile here
        probability_expression = noise.define_noise_function( function(x, y, tile, map)
            -- This is the user's map setting for the frequency of this ore
            local frequency_multiplier = noise.var("control-setting:sulfur-patch:frequency:multiplier")
            -- 0% chance of spawning in starting area (tier == 0)
            -- Using this is equivalent to has_starting_area_placement = false
            local tier = noise.clamp(noise.var("tier"), 0, 1)
            -- 1 in 48 chunks (each chunk is 64x64 tiles)
            local desired_frequency = 1 / (48 * 64^2)
            -- Our final chance, likely a very, very small decimal
            return tier * desired_frequency * frequency_multiplier
        end),
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = noise.define_noise_function( function(x, y, tile, map)
            -- This is the user's map setting for richness of this ore
            -- We ignore size here because we're always a single tile resource
            local richness_multiplier = noise.var("control-setting:sulfur-patch:richness:multiplier")
            -- This is the distance from the starting position, which is how vanilla scales ore yield
            local distance_value = noise.var("distance")
            -- This is our multiplier for the above, determining the yield gains over distance
            local scalar = 2^16
            -- Add it all together or what is likely a pretty big number
            return distance_value * scalar * richness_multiplier
        end)
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/ores/sulfur-patch/patch.png",
            priority = "extra-high",
            width = 224,
            height = 224,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}}
