DATA {
    type = "autoplace-control",
    category = "resource",
    name = "sulfur-patch",
    richness = true,
    order = "b"
}

DATA {
    type = "noise-layer",
    name = "sulfur-patch"
}

DATA {
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
            {"sulfur", 1}
        },
    },
    resource_patch_search_radius = 12,
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "sulfur-patch",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = false,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
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
}
