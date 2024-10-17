local resource_autoplace = require "resource-autoplace"
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["oil-sand"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["oil-sand"] = {}

data:extend {{
    type = "autoplace-control",
    category = "resource",
    name = "oil-sand",
    richness = true,
    order = "p-oil"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "oil-sand"
-- }}

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
            {type = "item", name = "oil-sand", amount = 1}
        },
    },
    starting_area = true,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "oil-sand",
        order = "b",
        base_density = 2.5,
        regular_rq_factor_multiplier = 1.75,
        base_spots_per_km2 = 1.5,
        random_spot_size_minimum = 4,
        random_spot_size_maximum = 8,
        has_starting_area_placement = false
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
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
