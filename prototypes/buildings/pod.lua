RECIPE {
    type = "recipe",
    name = "space-pod",
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
        {"space-pod", 1}
    }
}--:add_unlock("basic-electronics")

ITEM {
    type = "item",
    name = "space-pod",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/space-pod.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-hightech-buildings",
    order = "f",
    place_result = "space-pod",
    stack_size = 10
}

ENTITY {
    type = "container",
    name = "space-pod",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/space-pod.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "space-pod"},
    max_health = 100,
    corpse = "wooden-chest-remnants",
    collision_box = {{-1.45, -1.45}, {1.45, 1.45}},
    --fast_replaceable_group = "container",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    inventory_size = 10,
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    picture =
    {
      layers =
      {
        {
          filename = "__pypetroleumhandlinggraphics__/graphics/entity/pod/pod-2.png",
          priority = "extra-high",
          width = 224,
          height = 160,
          --shift = util.by_pixel(0.5, -2),
        },
      }
    }
  }