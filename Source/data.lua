if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}        
end

if not leighzermods.leighzerverylonghandedinserter then
    leighzermods.leighzerverylonghandedinserter = {}
end


local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

--add item
--add recipe
--add actual inserter that moves things
--add recipe unlock on logistics-2 tech research

data:extend({    
  
  {
    type = "item",
    name = "very-long-handed-inserter",
    icon = "__leighzerverylonghandedinserter__/graphics/icons/very-long-handed-inserter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "inserter",
    order = "c[very-long-handed-inserter]",
    place_result = "very-long-handed-inserter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "very-long-handed-inserter",
    enabled = false,
    ingredients =
    {
        {"iron-stick",4},
        {"iron-gear-wheel", 3},        
        {"long-handed-inserter", 1}     
    },
    result = "very-long-handed-inserter"
  },

  {
    type = "inserter",
    name = "very-long-handed-inserter",
    icon = "__leighzerverylonghandedinserter__/graphics/icons/very-long-handed-inserter.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "very-long-handed-inserter"},
    max_health = 160,
    corpse = "very-long-handed-inserter-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    damaged_trigger_effect = hit_effects.entity(),
    energy_per_movement = "8kJ", --5kJ
    energy_per_rotation = "8kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW",--"0.4kW"
    },
    rotation_speed = 0.02,
    extension_speed = 0.0457,
    fast_replaceable_group = "inserter",    
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-basic-1.ogg",
          volume = 0.3
        },
        {
          filename = "__base__/sound/inserter-basic-2.ogg",
          volume = 0.3
        },
        {
          filename = "__base__/sound/inserter-basic-3.ogg",
          volume = 0.3
        },
        {
          filename = "__base__/sound/inserter-basic-4.ogg",
          volume = 0.3
        },
        {
          filename = "__base__/sound/inserter-basic-5.ogg",
          volume = 0.3
        }
      },
      --max_sounds_per_type = 5,
      audible_distance_modifier = 0.7,
    },
    hand_base_picture =
    {
      filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/very-long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version =
      {
        filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/hr-very-long-handed-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    hand_closed_picture =
    {
      filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/very-long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/hr-very-long-handed-inserter-hand-closed.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_picture =
    {
      filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/very-long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/hr-very-long-handed-inserter-hand-open.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
        priority = "extra-high",
        width = 32,
        height = 132,
        scale = 0.25
      }
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    pickup_position = {0, -3},
    insert_position = {0, 3.2},
    platform_picture =
    {
      sheet =
      {
        filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/very-long-handed-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0},
        hr_version =
        {
          filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/hr-very-long-handed-inserter-platform.png",
          priority = "extra-high",
          width = 105,
          height = 79,
          shift = util.by_pixel(1.5, 7.5-1),
          scale = 0.5
        }
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
  },

  {
    type = "corpse",
    name = "very-long-handed-inserter-remnants",
    icon = "__leighzerverylonghandedinserter__/graphics/icons/very-long-handed-inserter.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "inserter-remnants",
    order = "a-c-b",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = make_rotated_animation_variations_from_sheet (4,
    {
      filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/remnants/very-long-handed-inserter-remnants.png",
      line_length = 1,
      width = 68,
      height = 48,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(4, -2),
      hr_version =
      {
        filename = "__leighzerverylonghandedinserter__/graphics/entity/very-long-handed-inserter/remnants/hr-very-long-handed-inserter-remnants.png",
        line_length = 1,
        width = 134,
        height = 94,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(3.5, -2),
        scale = 0.5
      }
    })
  },
})

if data.raw.technology["automation-2"] then
  table.insert(data.raw.technology["automation-2"].effects,{
    type = "unlock-recipe",
    recipe = "very-long-handed-inserter"
  })
end