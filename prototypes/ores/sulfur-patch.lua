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
    icon = "__pypetroleumhandling__/graphics/icons/ores/sulfur-patch.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 1, g = 0.823, b = 0.0},
    highlight = true,
    minimum = 100,
    normal = 200,
    maximum = 300,
    map_grid = true,
    minable = {
        hardness = 1.0,
        -- mining_particle = "sulfur-patch-particle",
        mining_time = 2,
        results = {
            {"sulfur", 1}
        },
    },
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    autoplace = {
        control = "sulfur-patch",
        sharpness = 3,
        --max_probability = 0.035,
        richness_multiplier = 800,
        richness_multiplier_distance_bonus = 1000,
        richness_base = 100000,
        coverage = 0.00003 / 60,
        peaks = {
            {
                noise_layer = "sulfur-patch",
                noise_octaves_difference = -2.85,
                noise_persistence = 0.4
            },
        }
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pypetroleumhandling__/graphics/entity/ores/sulfur-patch/patch.png",
            priority = "extra-high",
            width = 224,
            height = 224,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}
