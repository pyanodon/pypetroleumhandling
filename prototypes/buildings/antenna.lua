
RECIPE {
    type = "recipe",
    name = "antenna",
    energy_required = 2,
    enabled = true,
    ingredients = {
        {"lab", 1},
        {"iron-plate", 100},
        {"electric-mining-drill", 3},
        {"desulfurizator-unit", 1},
        {"small-parts-01", 20},
    },
    results = {
        {"antenna", 1}
    }
}

ITEM {
    type = "item",
    name = "antenna",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/control-tower.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "b",
    place_result = "antenna",
    stack_size = 10
}

ENTITY{
    type = "lamp",
    name = "antenna",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/control-tower.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "antenna"},
    max_health = 100,
    corpse = "lamp-remnants",
    dying_explosion = "lamp-explosion",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --damaged_trigger_effect = hit_effects.entity(),
    --vehicle_impact_sound = sounds.generic_impact,
    --open_sound = sounds.machine_open,
    --close_sound = sounds.machine_close,
    working_sound =
    {
      sound = { filename = "__pypetroleumhandlinggraphics__/sounds/tower.ogg", volume = 0.65 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "lamp"
    },
    energy_usage_per_tick = "20KW",
    --darkness_for_all_lamps_on = 0.5,
    --darkness_for_all_lamps_off = 0.3,
    light = {intensity = 0.9, size = 40, color = {r=1.0, g=1.0, b=1.0}},
    always_on = true,
    --light_when_colored = {intensity = 1, size = 6, color = {r=1.0, g=1.0, b=1.0}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
          {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/tower/tower.png",
            width = 192,
            height = 352,
            scale = 0.5,
            shift = util.by_pixel(16, -60),
          },
    picture_on =
        {
          filename = "__pypetroleumhandlinggraphics__/graphics/entity/tower/tower.png",
          width = 192,
          height = 352,
          scale = 0.5,
          shift = util.by_pixel(16, -60),
        },
    circuit_wire_connection_point = 
      {
        wire =
          {
            red = {-0.25, -2},
            green = {0.25, -2}
          },
        shadow =
          {
              red = {-0.25, -2},
              green = {0.25, -2}
          },
      },
    --circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
    circuit_wire_max_distance = 10
  }