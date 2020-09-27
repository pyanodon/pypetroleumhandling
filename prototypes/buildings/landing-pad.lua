RECIPE {
    type = "recipe",
    name = 'landing-pad',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"steam-engine", 5},
        {"fbreactor-mk01", 1},
        {"advanced-circuit", 20},
        {"nbfe-alloy", 30},
        {"concrete", 50},
        {"small-parts-02", 40},
        {"electric-engine-unit", 5},
    },
    results = {
        {'landing-pad', 1}
    }
}--:add_unlock("basic-electronics")

ITEM {
    type = "item",
    name = 'landing-pad',
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/landing-pad.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-hightech-buildings",
    order = "f",
    place_result = 'landing-pad',
    stack_size = 10
}

ENTITY {
    type = "container",
    name = 'landing-pad',
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/landing-pad.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = 'landing-pad'},
    max_health = 100,
    corpse = "wooden-chest-remnants",
    collision_box = {{-3,-3}, {3,3}},
    --fast_replaceable_group = "container",
    selection_box = {{-3, -3}, {3,3}},
    inventory_size = 100,
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    picture =
    {
      layers =
      {
        {
          filename = "__pypetroleumhandlinggraphics__/graphics/entity/landing-pad/landing-pad.png",
          priority = "extra-high",
          width = 1000,
          height = 1000,
          scale = 0.2
        },
      }
    },
    render_layer = 'corpse'
  }