local item_sounds = require("__base__.prototypes.item_sounds")
data:extend{
    {
        type = "ammo-category",
        name = "halo-ce-shotgun-ammo",
        subgroup = "ammo-category"
    },{
        type = "ammo",
        name = "halo-ce-shotgun-ammo",
        icons= {{ icon = "__base__/graphics/icons/shotgun-shell.png"},{ icon = "__Halo-Mod__/graphics/icons/halo-ce-shotgun.png"}},
        ammo_category = "halo-ce-shotgun-ammo",
        ammo_type =
        {
          target_type = "direction",
          clamp_position = true,
          action =
          {
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                source_effects =
                {
                  {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                  }
                }
              }
            },
            {
              type = "direct",
              repeat_count = 15,
              action_delivery =
              {
                type = "projectile",
                projectile = "piercing-shotgun-pellet",
                starting_speed = 1,
                starting_speed_deviation = 0.1,
                direction_deviation = 0.3,
                range_deviation = 0.3,
                max_range = 15
              }
            }
          }
        },
        magazine_size = 12,
        subgroup = "ammo",
        order = "a[basic-clips]-c[uranium-rounds-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 40*kg
    },{
    type = "gun",
    name = "halo-ce-shotgun",
    icon = "__Halo-Mod__/graphics/icons/halo-ce-shotgun.png",
    icon_size = 64,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "halo-ce-shotgun-ammo",

      cooldown = 40,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 18,
      sound = "__Halo-Mod__/sounds/shotgun_fire_shotgun6050.wav"
    },
    stack_size = 5
  },{
    type = "recipe",
    name = "halo-ce-shotgun",
    enabled = true,
    energy_required = 8, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "shotgun", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },
    results = {{type = "item", name = "halo-ce-shotgun", amount = 1}}
  },{
    type = "recipe",
    name = "halo-ce-shotgun-ammo",
    enabled = true,
    energy_required = 1, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "firearm-magazine", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },
    results = {{type = "item", name = "halo-ce-shotgun-ammo", amount = 1}}
  }
}