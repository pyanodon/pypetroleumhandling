local noise = require 'noise'
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["sulfur-patch"] = {}

data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "sulfur-patch",
    richness = true,
    order = "r-su"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "sulfur-patch"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_sulfur_patch_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier_from_start'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_sulfur_patch_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (48 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_sulfur_patch",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_sulfur_patch_starting_area * py_sulfur_patch_desired_frequency * var("control-setting:sulfur-patch:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_sulfur_patch_richness",
        expression = "2^16 * var('distance') * var('control-setting:sulfur-patch:richness:multiplier')"
    }
}

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
        probability_expression = "py_sulfur_patch",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_sulfur_patch_richness"
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
