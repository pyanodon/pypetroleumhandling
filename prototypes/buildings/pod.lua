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

--[[
  ENTITY{
    type = "car",
    name = "space-pod",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/space-pod.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
    minable = {mining_time = 0.5, result = "space-pod"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 10000,
    corpse = "medium-biter-corpse",
    dying_explosion = "blood-explosion-huge",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    immune_to_rock_impacts = true,
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 60
      },
      {
        type = "physical",
        decrease = 15,
        percent = 60
      },
      {
        type = "impact",
        decrease = 20,
        percent = 100
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 100
      },
      {
        type = "acid",
        decrease = 0,
        percent = 70
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    drawing_box = {{-1.8, -1.8}, {1.8, 1.8}},
    effectivity = 1,
    braking_power = "200kW",
    energy_source =
      {
        type = 'void'
      },
    consumption = "150kW",
    --terrain_friction_modifier = 0.01,
    friction = 10000,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.1, -7},
        size = 1,
        intensity = 0.7,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.1, -7},
        size = 1,
        intensity = 0.7,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
        priority = "low",
        width = 224,
        height = 160,
        frame_count = 1,
        slice = 1,
        lines_per_file = 1,
        direction_count = 64,
        shift = util.by_pixel(-0.0, -0.0),
        animation_speed = 0.1,
        max_advance = 1,
        filenames =
          {
            "__pypetroleumhandlinggraphics__/graphics/entity/pod/pod-2.png"
          },
        },
      }
    },

    turret_animation =
    {
      layers =
      {
        {
          filename = "__pyalienlifegraphics2__/graphics/entity/mega-farm/filler.png",
          priority = "low",
          --line_length = 8,
          width = 32,
          height = 32,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.0, -0.0),
          --animation_speed = 8,
        },
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    sound_no_fuel =
    {
      {
        filename = "__pyalienlifegraphics3__/sounds/crawdad-breath.ogg",
        volume = 0.6
      }
    },
    sound_minimum_speed = 0.05;
    sound_scaling_ratio = 0.8,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__pyalienlifegraphics3__/sounds/crawdad-breath.ogg",
        volume = 0.6
      },
      match_speed_to_activity = false
    },
    open_sound = { filename = "__pyalienlifegraphics3__/sounds/crawdad-in.ogg", volume=0.5 },
    close_sound = { filename = "__pyalienlifegraphics3__/sounds/crawdad-out.ogg", volume = 0.5 },
    rotation_speed = 0,
    --tank_driving = true,
    weight = 1000,
    inventory_size = 120,
    guns = {}
  }
  ]]--