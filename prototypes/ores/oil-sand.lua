DATA {
    type = "autoplace-control",
    category = "resource",
    name = "oil-sand",
    richness = true,
    order = "b-e"
}

DATA {
    type = "noise-layer",
    name = "oil-sand"
}

ENTITY {
    type = "resource",
    name = "oil-sand",
    category = "oil-sand",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/ores/oil-sand.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.3, g = 0.3, b = 0.3},
    minable = {
        
        -- mining_particle = "oil-sand-ore-particle",
        mining_time = 1,
        results = {
            {"oil-sand", 1}
        },
    },
    starting_area = true,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "oil-sand",
        sharpness = 15/16,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 20,
        richness_base = 10,
        coverage = 0.0003,
        peaks = {
            {
                noise_layer = "oil-sand",
                noise_octaves_difference = -0.85,
                noise_persistence = 0.4
            }
        }
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/ores/oil-sand/oil-sand.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/ores/oil-sand/hr-oil-sand.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }
}
