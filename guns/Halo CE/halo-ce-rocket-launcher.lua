local item_sounds = require("__base__.prototypes.item_sounds")
data:extend{
    {
        type = "ammo-category",
        name = "halo-ce-rocket-launcher-ammo",
        subgroup = "ammo-category"
    },{
        type = "ammo",
        name = "halo-ce-rocket-launcher-ammo",
        icons = {{ icon = "__base__/graphics/icons/rocket.png"},{ icon = "__Halo-Mod__/graphics/icons/halo-ce-rocket-launcher.png"}},
        ammo_category = "halo-ce-rocket-launcher-ammo",
        ammo_type =
        {
          target_type = "direction",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "rocket",
              starting_speed = 0.1,
              source_effects =
              {
                type = "create-entity",
                entity_name = "explosion"
              }
            }
          }
        },
        magazine_size = 2,
        subgroup = "ammo",
        order = "a[basic-clips]-c[uranium-rounds-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 40*kg
    },{
    type = "gun",
    name = "halo-ce-rocket-launcher",
    icon = "__Halo-Mod__/graphics/icons/halo-ce-rocket-launcher.png",
    icon_size = 64,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "halo-ce-rocket-launcher-ammo",

      cooldown = 60,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 18,
      sound = {"__Halo-Mod__/sounds/rocket_launcher_fire_rocket15.wav",
      "__Halo-Mod__/sounds/rocket_launcher_fire_rocket16.wav"}
    },
    stack_size = 5
  },{
    type = "recipe",
    name = "halo-ce-rocket-launcher",
    enabled = true,
    energy_required = 8, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "rocket-launcher", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },
    results = {{type = "item", name = "halo-ce-rocket-launcher", amount = 1}}
  },{
    type = "recipe",
    name = "halo-ce-rocket-launcher-ammo",
    enabled = true,
    energy_required = 1, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "rocket", amount = 2},
      {type = "item", name = "iron-plate", amount = 1}
    },
    results = {{type = "item", name = "halo-ce-rocket-launcher-ammo", amount = 1}}
  }
}