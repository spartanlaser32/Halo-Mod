local item_sounds = require("__base__.prototypes.item_sounds")
data:extend{
    {
        type = "ammo-category",
        name = "halo-ce-fuel-rod-cannon-ammo",
        subgroup = "ammo-category"
    },{
        type = "ammo",
        name = "halo-ce-fuel-rod-cannon-ammo",
        icons = {{ icon = "__base__/graphics/icons/battery.png"},{ icon = "__Halo-Mod__/graphics/icons/halo-ce-fuel-rod-cannon.png"}},
        ammo_category = "halo-ce-fuel-rod-cannon-ammo",
        ammo_type = {
          target_type = "direction",
          action = {
            {
              type = "direct",
              action_delivery =
              {
                {
                  type = "projectile",
                  starting_speed = 1,
                  projectile = "fuel-rod-projectile",
                  max_range = 50,
                  source_effects =
                  {
                    {
                      type = "create-explosion",
                      entity_name = "explosion-gunshot"
                    },
                    {
                      type = "create-entity",
                      entity_name = "explosion"
                    }
                  },
                  target_effects =
                  {
                    {
                      type = "activate-impact",
                      deliver_category = "bullet"
                    }
                  }
                },{
                  type = "instant",
                  source_effects = {
                    {
                    type = "script", 
                    effect_id = "weapon_heat"
                  }
                  },
                }

              }
            }
          }
        },
        magazine_size = 28,
        subgroup = "ammo",
        order = "a[basic-clips]-c[uranium-rounds-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 40*kg
    },{
      type = "gun",
      name = "halo-ce-fuel-rod-cannon",
      icon = "__Halo-Mod__/graphics/icons/halo-ce-fuel-rod-cannon.png",
      icon_size = 64,
      subgroup = "gun",
      order = "a[basic-clips]-b[submachine-gun]",
      inventory_move_sound = item_sounds.weapon_large_inventory_move,
      pick_sound = item_sounds.weapon_large_inventory_pickup,
      drop_sound = item_sounds.weapon_large_inventory_move,
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "halo-ce-fuel-rod-cannon-ammo",
        
        cooldown = 30,
        movement_slow_down_factor = 0.7,
        projectile_creation_distance = 1.125,
        range = 18,
        sound = {"__Halo-Mod__/sounds/halo_ce_fuel_rod_fire.wav"}
      },
    stack_size = 5
    },{
    type = "recipe",
    name = "halo-ce-fuel-rod-cannon",
    enabled = true,
    energy_required = 8, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "rocket-launcher", amount = 1},
      {type = "item", name = "battery", amount = 1}
    },
    results = {{type = "item", name = "halo-ce-fuel-rod-cannon", amount = 1}}
  },{
    type = "recipe",
    name = "halo-ce-fuel-rod-cannon-ammo",
    enabled = true,
    energy_required = 1, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "rocket", amount = 1},
      {type = "item", name = "battery", amount = 1}
    },
    results = {{type = "item", name = "halo-ce-fuel-rod-cannon-ammo", amount = 1}}
  }
}