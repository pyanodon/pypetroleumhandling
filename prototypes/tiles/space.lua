RECIPE {
    type = "recipe",
    name = "space",
    category = "crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 2},
        {type = "item", name = "iron-stick", amount = 1}
    },
    results = {
        {"space", 1}
    },
    requester_paste_multiplier = 4
}:add_unlock("aluminium-mk02", "coal-processing-2"):replace_ingredient("iron-stick", "solder"):replace_ingredient("copper-plate", "aluminium-plate")

ITEM {
    type = "item",
    name = "space",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/space.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-tiles",
    order = "a-aluminium-oxide",
    stack_size = 500,
    place_as_tile = {result = "space", condition_size = 2, condition = {"water-tile"}}
}

ENTITY {
    type = "tile",
    name = "space",
    needs_correction = false,
    --minable = {hardness = 0.2, mining_time = 0.1, result = "space"},
    mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
    collision_mask = {
        --"water-tile",
        "resource-layer",
        "item-layer",
        "doodad-layer"
      },
    walking_speed_modifier = 0.5,
    decorative_removal_probability = 1,
    draw_in_water_layer = true,
    layer = 60,
    variants = {
        main = {
            {
                picture = "__pypetroleumhandlinggraphics__/graphics/tiles/space.png",
                count = 1,
                size = 1
            }
        },
        inner_corner = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-inner-corner.png",
            count = 8
        },
        outer_corner = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-outer-corner.png",
            count = 8
        },
        side = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-side.png",
            count = 8
        },
        u_transition = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-u.png",
            count = 8
        },
        o_transition = {
            picture = "__pyindustry__/graphics/tiles/py-asphalt/concrete-o.png",
            count = 1
        }
    },
    walking_sound = {
        {
            filename = "__pyindustry__/sounds/iron1-01.ogg",
            volume = 0.6
        },
        {
            filename = "__pyindustry__/sounds/iron1-02.ogg",
            volume = 0.6
        },
        {
            filename = "__pyindustry__/sounds/iron1-04.ogg",
            volume = 0.6
        },
        {
            filename = "__pyindustry__/sounds/iron1-03.ogg",
            volume = 0.6
        }
    },
    map_color = defines.color.darkgrey,
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = _G.stone_path_vehicle_speed_modifier
}
