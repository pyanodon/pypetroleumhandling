--[[
RECIPE {
    type = "recipe",
    name = "space-plate",
    category = "crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 2},
        {type = "item", name = "iron-stick", amount = 1}
    },
    results = {
        {"space-plate", 1}
    },
    requester_paste_multiplier = 4
}:add_unlock("aluminium-mk02", "coal-processing-2"):replace_ingredient("iron-stick", "solder"):replace_ingredient("copper-plate", "aluminium-plate")
]]--
ITEM {
    type = "item",
    name = "space-plate",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tile-3.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-tiles",
    order = "a-aluminium-oxide",
    stack_size = 500,
    place_as_tile = {result = "space-plate", condition_size = 2, condition = {"water-tile"}}
}

ENTITY {
    type = "tile",
    name = "space-plate",
    order = "a-c-a",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "space-plate"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg",volume = 0.8},
    collision_mask = {'layer-12'}, --{"ground-tile"},
    walking_speed_modifier = 1.5,
    layer = 64,
    transition_overlay_layer_offset = 2, -- need to render border overlay on top of hazard-concrete
    decorative_removal_probability = 0.25,
    variants =
    {
      main =
      {
        {
          picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
          count = 1,
          size = 1
        },
        {
          picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
          count = 1,
          size = 2,
          probability = 0.39
        },
        {
          picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
          count = 1,
          size = 4,
          probability = 1
        }
      },
      inner_corner =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-inner-corner.png",
        count = 16,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-inner-corner.png",
          count = 16,
          scale = 0.5
        }
      },
      inner_corner_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-inner-corner-mask.png",
        count = 16,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-inner-corner-mask.png",
          count = 16,
          scale = 0.5
        }
      },

      outer_corner =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-outer-corner.png",
        count = 8,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-outer-corner.png",
          count = 8,
          scale = 0.5
        }
      },
      outer_corner_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-outer-corner-mask.png",
        count = 8,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-outer-corner-mask.png",
          count = 8,
          scale = 0.5
        }
      },

      side =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-side.png",
        count = 16,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-side.png",
          count = 16,
          scale = 0.5
        }
      },
      side_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-side-mask.png",
        count = 16,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-side-mask.png",
          count = 16,
          scale = 0.5
        }
      },
--[[
      u_transition =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-u.png",
        count = 8,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-u.png",
          count = 8,
          scale = 0.5
        }
      },
      u_transition_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-u-mask.png",
        count = 8,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-u-mask.png",
          count = 8,
          scale = 0.5
        }
      },

      o_transition =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-o.png",
        count = 4,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-o.png",
          count = 4,
          scale = 0.5
        }
      },
      o_transition_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-o-mask.png",
        count = 4,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-o-mask.png",
          count = 4,
          scale = 0.5
        }
      },
]]--

      material_background =
      {
        picture = "__pypetroleumhandlinggraphics__/graphics/tiles/platform-tile.png",
        count = 8,
        scale = 0.5
      }
    },

    --transitions = concrete_transitions,
    --transitions_between_transitions = concrete_transitions_between_transitions,

    --walking_sound = refined_concrete_sounds,
    --build_sound = concrete_tile_build_sounds,

    map_color={r=49, g=48, b=45},
    scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
    pollution_absorption_per_second = 0,
    --vehicle_friction_modifier = concrete_vehicle_speed_modifier,

    --trigger_effect = tile_trigger_effects.concrete_trigger_effect(),
  }
