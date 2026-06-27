RECIPE {
    type = "recipe",
    name = "guar-gum-plantation",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "pipe",               amount = 20},
        {type = "item", name = "steel-plate",        amount = 20},
        {type = "item", name = "botanical-nursery",  amount = 1},
        {type = "item", name = "steam-engine",       amount = 2},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "small-parts-01",     amount = 30}
    },
    results = {
        {type = "item", name = "guar-gum-plantation", amount = 1}
    }
}:add_unlock("guar")

RECIPE {
    type = "recipe",
    name = "guar-gum-plantation-mk02",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "guar-gum-plantation", amount = 1},
        {type = "item", name = "steel-plate",         amount = 50},
        {type = "item", name = "niobium-pipe",        amount = 20},
        {type = "item", name = "engine-unit",         amount = 3},
        {type = "item", name = "small-parts-02",      amount = 50}
    },
    results = {
        {type = "item", name = "guar-gum-plantation-mk02", amount = 1}
    }
}:add_unlock("oil-machines-mk02")

RECIPE {
    type = "recipe",
    name = "guar-gum-plantation-mk03",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "guar-gum-plantation-mk02", amount = 1},
        {type = "item", name = "steel-plate",              amount = 100},
        {type = "item", name = "processing-unit",          amount = 15},
        {type = "item", name = "small-parts-03",           amount = 25},
        {type = "item", name = "electric-engine-unit",     amount = 5},
        {type = "item", name = "plastic-bar",              amount = 100}
    },
    results = {
        {type = "item", name = "guar-gum-plantation-mk03", amount = 1}
    }
}:add_unlock("oil-machines-mk03")

RECIPE {
    type = "recipe",
    name = "guar-gum-plantation-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "guar-gum-plantation-mk03", amount = 1},
        {type = "item", name = "low-density-structure",    amount = 40},
        {type = "item", name = "nbfe-alloy",               amount = 15}},
    results = {
        {type = "item", name = "guar-gum-plantation-mk04", amount = 1}
    }
}:add_unlock("oil-machines-mk04")

for i = 1, 4 do
    local name = i == 1 and "guar-gum-plantation" or "guar-gum-plantation-mk0" .. i
    local icon = "__pypetroleumhandlinggraphics__/graphics/icons/guar-gum-plantation-mk0" .. i .. ".png"
    local icon_size = 64
    local energy_usages = {400, 600, 1000, 1500}

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-petroleum-handling-buildings-extras",
        order = "b",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "guar-gum-plantation",
        next_upgrade = i~=4 and "guar-gum-plantation-mk0" .. (i+1) or nil,
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"guar"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution = -35}
        },
        energy_usage = energy_usages[i] .. "kW",
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/left.png",
                        width = 128,
                        height = 238,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.3,
                        shift = util.by_pixel(-48, -6)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/left-mask.png",
                        width = 128,
                        height = 238,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.3,
                        shift = util.by_pixel(-48, -6),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/right.png",
                        width = 96,
                        height = 238,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.3,
                        shift = util.by_pixel(64, -6)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/right-mask.png",
                        width = 96,
                        height = 238,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.3,
                        shift = util.by_pixel(64, -6),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/sh-left.png",
                        width = 128,
                        height = 221,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.3,
                        draw_as_shadow = true,
                        shift = util.by_pixel(-48, 4)
                    },
                    {
                        filename = "__pypetroleumhandlinggraphics__/graphics/entity/guar-gum-plantation/sh-right.png",
                        width = 105,
                        height = 221,
                        line_length = 16,
                        frame_count = 100,
                        animation_speed = 0.3,
                        draw_as_shadow = true,
                        shift = util.by_pixel(64, 4)
                    }
                }
            }
        },

        fluid_boxes_off_when_no_fluid_recipe = false,
        fluid_boxes = { -- 1
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-2.0, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {2.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(true, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(true, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
                volume = 100,
                pipe_connections = {{flow_direction = "input", position = {-2.0, -3.0}, direction = defines.direction.north}}
            }
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {
                filename = "__pypetroleumhandlinggraphics__/sounds/guar-gum.ogg",
                volume = 1.4
            },
            idle_sound = {
                filename = "__pypetroleumhandlinggraphics__/sounds/guar-gum.ogg",
                volume = 0.3
            }
        },
    }
end
