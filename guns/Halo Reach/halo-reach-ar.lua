local item_sounds = require("__base__.prototypes.item_sounds")
data:extend{
    {
        type = "ammo-category",
        name = "halo-reach-ar-ammo",
        subgroup = "ammo-category"
    },{
        type = "ammo",
        name = "halo-reach-ar-ammo",
        icons = {{ icon = "__base__/graphics/icons/firearm-magazine.png"},{ icon = "__Halo-Mod__/graphics/icons/halo-reach-ar.png"}},
        ammo_category = "halo-reach-ar-ammo",
        ammo_type = {
            target_type = "direction",
            action = {
              {
                type = "direct",
                action_delivery =
                {
                  {
                    type = "projectile",
                    starting_speed = 3,
                    projectile = "halo-bullet",
                    starting_speed_deviation = 0.1,
                    direction_deviation = 0.1,
                    range_deviation = 0.3,
                    max_range = 50,
                    target_effects =
                    {
                      {
                        type = "create-entity",
                        entity_name = "explosion-hit",
                        offsets = {{0, 1}},
                        offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                      },
                      {
                        type = "activate-impact",
                        deliver_category = "bullet"
                      }
                    }
                  }
                }
              }
            }
          },
        magazine_size = 32,
        subgroup = "ammo",
        order = "a[basic-clips]-c[uranium-rounds-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 40*kg
    },{
    type = "gun",
    name = "halo-reach-ar",
    icon = "__Halo-Mod__/graphics/icons/halo-reach-ar.png",
    icon_size = 64,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "halo-reach-ar-ammo",

      cooldown = 6,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 18,
      sound = {"__Halo-Mod__/sounds/Halo Reach/ar_reach1 (2).wav", 
        "__Halo-Mod__/sounds/Halo Reach/ar_reach2 (2).wav",
        "__Halo-Mod__/sounds/Halo Reach/ar_reach3 (2).wav",}
    },
    stack_size = 5
  },{
    type = "recipe",
    name = "halo-reach-ar",
    enabled = true,
    energy_required = 8, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "submachine-gun", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },
    results = {{type = "item", name = "halo-reach-ar", amount = 1}}
  },{
    type = "recipe",
    name = "halo-reach-ar-ammo",
    enabled = true,
    energy_required = 1, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "firearm-magazine", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },
    results = {{type = "item", name = "halo-reach-ar-ammo", amount = 1}}
  }
}