local item_sounds = require("__base__.prototypes.item_sounds")
data:extend{
    {
        type = "ammo-category",
        name = "halo-ce-plasma-pistol-ammo",
        subgroup = "ammo-category"
    },{
        type = "ammo",
        name = "halo-ce-plasma-pistol-ammo",
        icons = {{ icon = "__base__/graphics/icons/battery.png"},{ icon = "__Halo-Mod__/graphics/icons/halo-ce-plasma-pistol.png"}},
        ammo_category = "halo-ce-plasma-pistol-ammo",
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
                    projectile = "green-plasma-projectile",
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
      name = "halo-ce-plasma-pistol",
      icon = "__Halo-Mod__/graphics/icons/halo-ce-plasma-pistol.png",
      icon_size = 64,
      subgroup = "gun",
      order = "a[basic-clips]-b[submachine-gun]",
      inventory_move_sound = item_sounds.weapon_large_inventory_move,
      pick_sound = item_sounds.weapon_large_inventory_pickup,
      drop_sound = item_sounds.weapon_large_inventory_move,
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "halo-ce-plasma-pistol-ammo",
  
        cooldown = 8,
        movement_slow_down_factor = 0.7,
        projectile_creation_distance = 1.125,
        range = 18,
        sound = {"__Halo-Mod__/sounds/plasma_rifle_fire_plasmarifle1.wav",
        "__Halo-Mod__/sounds/plasma_rifle_fire_plasmarifle2.wav",
        "__Halo-Mod__/sounds/plasma_rifle_fire_plasmarifle3.wav",
        "__Halo-Mod__/sounds/plasma_rifle_fire_plasmarifle4.wav",
      "__Halo-Mod__/sounds/plasma_rifle_fire_plasmarifle5.wav"}
      },
      stack_size = 5
    },{
    type = "recipe",
    name = "halo-ce-plasma-pistol",
    enabled = true,
    energy_required = 8, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "pistol", amount = 1},
      {type = "item", name = "battery", amount = 1}
    },
    results = {{type = "item", name = "halo-ce-plasma-pistol", amount = 1}}
  },{
    type = "recipe",
    name = "halo-ce-plasma-pistol-ammo",
    enabled = true,
    energy_required = 1, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "battery", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },
    results = {{type = "item", name = "halo-ce-plasma-pistol-ammo", amount = 1}}
  }
}