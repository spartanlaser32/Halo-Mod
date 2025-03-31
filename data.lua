--data.lua
require("recipe")

local sounds = require("__base__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local simulations = require("__base__.prototypes.factoriopedia-simulations")
local halo_ce_ar = table.deepcopy(data.raw["gun"]["submachine-gun"]) -- copy the table that defines the heavy armor item into the fireArmor variable

halo_ce_ar.name = "halo-ce-ar"
halo_ce_ar.icon = "__Halo-Mod__/graphics/icons/halo-ce-ar.jpg"
halo_ce_ar.icon_size = 138
halo_ce_ar.attack_parameters.sound = 
{"__Halo-Mod__/sounds/assault_rifle_fire_brown2_1.wav", 
"__Halo-Mod__/sounds/assault_rifle_fire_brown2_2.wav", 
"__Halo-Mod__/sounds/assault_rifle_fire_brown2_3.wav",
"__Halo-Mod__/sounds/assault_rifle_fire_brown2_5.wav" }
halo_ce_ar.attack_parameters.cooldown = 4

local halo_ce_pistol = table.deepcopy(data.raw["gun"]["pistol"]) -- copy the table that defines the heavy armor item into the fireArmor variable

halo_ce_pistol.name = "halo-ce-pistol"
halo_ce_pistol.icon = "__Halo-Mod__/graphics/icons/halo-ce-pistol.png"
halo_ce_pistol.icon_size = 282
halo_ce_pistol.attack_parameters.sound = "__Halo-Mod__/sounds/pistol_fire_handgun2.wav"
halo_ce_pistol.attack_parameters.range = 50
halo_ce_pistol.attack_parameters.damage_modifier = 5


local halo_ce_shotgun = table.deepcopy(data.raw["gun"]["shotgun"])
halo_ce_shotgun.name = "halo-ce-shotgun"
halo_ce_shotgun.icon = "__Halo-Mod__/graphics/icons/halo-ce-shotgun.jpg"
halo_ce_shotgun.icon_size = 171
halo_ce_shotgun.attack_parameters.sound = "__Halo-Mod__/sounds/shotgun_fire_shotgun6050.wav"
halo_ce_shotgun.attack_parameters.damage_modifier = 5

local halo_ce_rocket = table.deepcopy(data.raw["gun"]["rocket-launcher"])
halo_ce_rocket.name = "halo-ce-rocket-launcher"
halo_ce_rocket.icon = "__Halo-Mod__/graphics/icons/halo-ce-rocket-launcher.jpg"
halo_ce_rocket.icon_size = 209
halo_ce_rocket.attack_parameters.sound = 
{"__Halo-Mod__/sounds/rocket_launcher_fire_rocket15.wav",
"__Halo-Mod__/sounds/rocket_launcher_fire_rocket16.wav"}
halo_ce_rocket.attack_parameters.damage_modifier = 5
halo_ce_rocket.attack_parameters.lead_target_for_projectile_speed = 1

local halo_ce_sniper = table.deepcopy(data.raw["gun"]["submachine-gun"])
halo_ce_sniper.name = "halo-ce-sniper-rifle"
halo_ce_sniper.icon = "__Halo-Mod__/graphics/icons/halo-ce-sniper-rifle.jpg"
halo_ce_sniper.icon_size = 128
halo_ce_sniper.attack_parameters.sound = 
{"__Halo-Mod__/sounds/sniper_rifle_fire_ruger21.wav",
"__Halo-Mod__/sounds/sniper_rifle_fire_ruger22.wav",
"__Halo-Mod__/sounds/sniper_rifle_fire_ruger23.wav",
"__Halo-Mod__/sounds/sniper_rifle_fire_ruger24.wav"}
halo_ce_sniper.attack_parameters.cooldown = 30
halo_ce_sniper.attack_parameters.range = 200
halo_ce_sniper.attack_parameters.damage_modifier = 5


data:extend{halo_ce_ar, halo_ce_pistol, halo_ce_shotgun, halo_ce_rocket, halo_ce_sniper,{
    type = "projectile",
    name = "plasma-projectile",
    flags = {"not-on-map"},
    hidden = true,
    collision_box = {{-0.3, -1.1}, {0.3, 1.1}},
    acceleration = 0,
    direction_only = true,
    piercing_damage = 1000,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 10 , type = "electric"}
          },
          {
            type = "damage",
            damage = {amount = 10 , type = "laser"}
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "small-scorchmark-tintable",
            check_buildability = true
          }
        }
      }
    },
    animation =
    {
      filename = "__Halo-Mod__/graphics/entity/bullet/halo-plasma-small.png",
      draw_as_glow = true,
      width = 3,
      height = 40,
      priority = "high"
    }
  },{
    type = "projectile",
    name = "green-plasma-projectile",
    flags = {"not-on-map"},
    hidden = true,
    collision_box = {{-0.3, -1.1}, {0.3, 1.1}},
    acceleration = 0,
    direction_only = true,
    piercing_damage = 1000,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 10 , type = "electric"}
          },
          {
            type = "damage",
            damage = {amount = 10 , type = "laser"}
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "small-scorchmark-tintable",
            check_buildability = true
          }
        }
      }
    },
    animation =
    {
      filename = "__Halo-Mod__/graphics/entity/bullet/halo-green-plasma.png",
      draw_as_glow = true,
      width = 3,
      height = 42,
      priority = "high"
    }
  },{
    type = "projectile",
    name = "needle-projectile",
    flags = {"not-on-map"},
    turn_speed = 0.003,
    hidden = true,
    collision_box = {{-0.3, -1.1}, {0.3, 1.1}},
    acceleration = 0,
    direction_only = true,
    piercing_damage = 1000,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 10 , type = "poison"}
          },
          {
            type = "damage",
            damage = {amount = 10 , type = "explosion"}
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "small-scorchmark-tintable",
            check_buildability = true
          }
        }
      }
    },
    animation =
    {
      filename = "__Halo-Mod__/graphics/entity/bullet/halo-needle-small.png",
      draw_as_glow = true,
      width = 3,
      height = 27,
      priority = "high"
    }
  },{
    type = "gun",
    name = "halo-ce-plasma-rifle",
    icon = "__Halo-Mod__/graphics/icons/halo-ce-plasma-rifle.png",
    icon_size = 650,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
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
                projectile = "plasma-projectile",
                max_range = 50,
                source_effects =
                {
                  {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                  }
                },
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
    type = "gun",
    name = "halo-ce-needler",
    icon = "__Halo-Mod__/graphics/icons/halo-ce-needler-fix.png",
    icon_size = 327,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
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
                projectile = "needle-projectile",
                max_range = 50,
                source_effects =
                {
                  {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                  }
                },
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
      cooldown = 10,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 18,
      sound = {"__Halo-Mod__/sounds/needler_fire_needlefire11.wav",
      "__Halo-Mod__/sounds/needler_fire_needlefire12.wav",
      "__Halo-Mod__/sounds/needler_fire_needlefire13.wav"}
    },
    stack_size = 5
  },{
    type = "gun",
    name = "halo-ce-plasma-pistol",
    icon = "__Halo-Mod__/graphics/icons/halo-ce-pistol.png",
    icon_size = 240,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
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
                source_effects =
                {
                  {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                  }
                },
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
  },}