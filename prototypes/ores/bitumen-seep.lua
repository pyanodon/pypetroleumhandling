data.raw.planet.nauvis.map_gen_settings.autoplace_controls["bitumen-seep"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["bitumen-seep"] = {}

data:extend {{
    type = "autoplace-control",
    category = "resource",
    name = "bitumen-seep",
    richness = false,
    order = "c"
}}

data:extend {
    {
        type = "noise-expression",
        name = "py_bitumen_seep_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier_from_start'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_bitumen_seep_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (32 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_bitumen_seep",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_bitumen_seep_starting_area * py_bitumen_seep_desired_frequency * var("control:bitumen-seep:frequency")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_bitumen_seep_richness",
        expression = "2^16 * var('distance') * var('control:bitumen-seep:richness')"
    }
}

ENTITY {
    type = "resource",
    name = "bitumen-seep",
    icon = "__base__/graphics/icons/crude-oil-resource.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    category = "bitumen-seep",
    order = "a-b-a",
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
    collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
    selection_box = {{-2.4, -2.4}, {2.4, 2.4}},
    autoplace = {
        name = "bitumen-seep",
        order = "c-bitumen-seep", -- Other resources are "b"; oil won't get placed if something else is already there.
        control = "bitumen-seep",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_bitumen_seep",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_bitumen_seep_richness"
    },
    stage_counts = {0},
    stages =
    {
        sheet =
        {
            filename = "__base__/graphics/entity/crude-oil/crude-oil.png",
            priority = "extra-high",
            width = 148,
            height = 120,
            frame_count = 4,
            variation_count = 1,
            shift = util.by_pixel(0, -2),
            scale = 0.5,
        }
    },
    map_color = {0.78, 0.2, 0.77},
    map_grid = false
}
