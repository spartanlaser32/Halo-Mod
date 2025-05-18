--data.lua
require("recipe")
require("constants")
require("projectiles")
require("guns.Halo CE.halo-ce-ar")
require("guns.Halo CE.halo-ce-pistol")
require("guns.Halo CE.halo-ce-sniper-rifle")
require("guns.Halo CE.halo-ce-shotgun")
require("guns.Halo CE.halo-ce-rocket-launcher")
require("guns.Halo CE.halo-ce-plasma-rifle")
require("guns.Halo CE.halo-ce-plasma-pistol")
require("guns.Halo CE.halo-ce-fuel-rod-cannon")
require("guns.Halo CE.halo-ce-needler")
require("guns.Halo Reach.halo-reach-ar")
require("guns.Halo Reach.halo-reach-dmr")
require("guns.Halo Reach.halo-reach-magnum")
require("guns.Halo Reach.halo-reach-shotgun")
require("guns.Halo Reach.halo-reach-sniper-rifle")
require("guns.Halo 2.halo-2-br")
require("guns.Halo 2.halo-2-smg")
require("guns.Halo 2.halo-2-shotgun")
require("guns.Halo 2.halo-2-sniper-rifle")
local sounds = require("__base__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local simulations = require("__base__.prototypes.factoriopedia-simulations")

--[[
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
halo_ce_pistol.icon = "__Halo-Mod__/graphics/icons/halo-ce-pistol-actual.png"
halo_ce_pistol.icon_size = 64
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

--data.raw['item']['nutrients'].spoil_ticks = -1 * minute
data:extend{halo_ce_ar, halo_ce_pistol, halo_ce_shotgun, halo_ce_rocket, halo_ce_sniper,
    {
    type = "gun",
    name = "halo-ce-plasma-rifle",
    icon = "__Halo-Mod__/graphics/icons/halo-ce-plasma-rifle-actual.png",
    icon_size = 64,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "halo-plasma-rifle-ammo",

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
    icon = "__Halo-Mod__/graphics/icons/halo-ce-needler-actual.png",
    icon_size = 64,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      ,
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
    icon = "__Halo-Mod__/graphics/icons/halo-ce-plasma-pistol-actual.png",
    icon_size = 64,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "halo-plasma-pistol-ammo",

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
    type = "delayed-active-trigger",
    name = "weapon-cooling",
    action = {
      {
        type = "direct",
        action_delivery =
        {
          {
            type = "instant",
            source_effects = {
              {
              type = "script", 
              effect_id = "weapon-cooling"
            }
            },
          }
        }
      }
    },
    delay = 60,
    cancel_when_source_is_destroyed = true
  },{
    type = "ammo-category",
    name = "blank"
  },{
    type = "gun",
    name = "halo-ce-fuel-rod-cannon",
    icon = "__Halo-Mod__/graphics/icons/halo-ce-fuel-rod.png",
    icon_size = 64,
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    inventory_move_sound = item_sounds.weapon_large_inventory_move,
    pick_sound = item_sounds.weapon_large_inventory_pickup,
    drop_sound = item_sounds.weapon_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
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
              },
              {
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
      cooldown = 8,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 18,
      sound = {"__Halo-Mod__/sounds/halo_ce_fuel_rod_fire.wav"}
    },
  stack_size = 5
  }
}
]]
data:extend{
{
  type = "ammo-category",
  name = "blank"
}}
for _,weapon in ipairs(energy_weapons) do
  local gun = table.deepcopy(data.raw["gun"][weapon])
  gun.name = "overheated-" .. weapon
  local cat = gun.attack_parameters.ammo_category
  gun.attack_parameters = {
    type = "projectile",
    range = 0,
    cooldown = 0,
    ammo_category = cat,
    ammo_type = {}
  }
  gun.icons = {{icon= gun.icon, tint = {1, 0, 0 }}}
  
  gun.icon = nil
  gun.hidden = true
  data:extend{gun,{
    type = "sound",
    name = weapon .. "-overheat",
    filename = "__Halo-Mod__/sounds/" .. string.gsub(weapon, "-", "_") .. "_overheat.wav"
  }}
  data:extend{{
    type = "recipe",
    name = "fixing-" .. weapon,
    icon = nil,
    icons = {{ icon="__Halo-Mod__/graphics/icons/" .. weapon .. ".png"},{ icon="__Halo-Mod__/graphics/icons/recycling.png"}},
    enabled = true,
    energy_required = 8, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "overheated-" .. weapon, amount = 1}
    },
    results = {{type = "item", name = weapon, amount = 1}}
  }}

end
--HALO CE FUEL ROD CANNON, couldnt find official overheat sound so plasma rifle will be used as temporary standin

