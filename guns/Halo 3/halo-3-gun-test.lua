require("halo-gun-maker")

halo_gun("3", "ar", {
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
                        type = "activate-impact",
                        deliver_category = "bullet"
                      }
                    }
                  }
                }
              }
            }
          }, 32, {
      type = "projectile",
      ammo_category = "halo-3-ar-ammo",

      cooldown = 5,
      cooldown_deviation = 0.1,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 18,
      sound = {"__Halo-Mod__/sounds/Halo 3/19203_b.wav",
      "__Halo-Mod__/sounds/Halo 3/19204_b.wav",
      "__Halo-Mod__/sounds/Halo 3/19103_b.wav"}
    },{
      {type = "item", name = "submachine-gun", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },{
      {type = "item", name = "firearm-magazine", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    })

halo_gun("3", "br",{
                target_type = "direction",
                action = {
                    {
                        type = "direct",
                        repeat_count = 3,
                        action_delivery =
                        {
                            {
                                type = "projectile",
                                starting_speed = 3,
                                projectile = "halo-bullet",
                                --starting_speed_deviation = 0.1,
                                --direction_deviation = 0.1,
                                range_deviation = 0.3,
                                max_range = 50,
                                target_effects =
                                {
                                    {
                                        type = "activate-impact",
                                        deliver_category = "bullet"
                                    }
                                }
                            }
                        }
                    }
                }
             } , 36, {
      type = "projectile",
      ammo_category = "halo-3-br-ammo",

      cooldown = 25,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 18,
      sound = {"__Halo-Mod__/sounds/Halo 3/battle_rifle_fire2.wav",
        "__Halo-Mod__/sounds/Halo 3/battle_rifle_fire3.wav",
        "__Halo-Mod__/sounds/Halo 3/battle_rifle_fire4.wav",
        "__Halo-Mod__/sounds/Halo 3/battle_rifle_fire5.wav",
        "__Halo-Mod__/sounds/Halo 3/battle_rifle_fire6.wav",
        "__Halo-Mod__/sounds/Halo 3/battle_rifle_fire7.wav",
        "__Halo-Mod__/sounds/Halo 3/battle_rifle_fire8.wav"}
    },{
      {type = "item", name = "submachine-gun", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },{
      {type = "item", name = "firearm-magazine", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    })   
     

halo_gun("3", "smg",{
                target_type = "direction",
                action = {
                    {
                        type = "direct",
                        --repeat_count = 3,
                        action_delivery =
                        {
                            {
                                type = "projectile",
                                starting_speed = 3,
                                projectile = "halo-bullet",
                                starting_speed_deviation = 0.2,
                                direction_deviation = 0.4,
                                range_deviation = 0.3,
                                max_range = 50,
                                target_effects =
                                {
                                    {
                                        type = "activate-impact",
                                        deliver_category = "bullet"
                                    }
                                }
                            }
                        }
                    }
                }
             } , 60, {
      type = "projectile",
      ammo_category = "halo-3-smg-ammo",

      cooldown = 4,
      movement_slow_down_factor = 1,
      projectile_creation_distance = 1.125,
      range = 18,
      cyclic_sound = {
        begin_sound = {filename = "__Halo-Mod__/sounds/Halo 3/smg-in.wav", volume = 1},
        middle_sound = {filename = "__Halo-Mod__/sounds/Halo 3/smg-loop.wav", volume = 1},
        end_sound = {filename = "__Halo-Mod__/sounds/Halo 3/smg-out.wav", volume = 1}
      }
    },{
      {type = "item", name = "submachine-gun", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },{
      {type = "item", name = "firearm-magazine", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    })   

halo_gun("3", "magnum",{
                target_type = "direction",
                action = {
                    {
                        type = "direct",
                        --repeat_count = 3,
                        action_delivery =
                        {
                            {
                                type = "projectile",
                                starting_speed = 3,
                                projectile = "halo-bullet",
                                --starting_speed_deviation = 0.1,
                                --direction_deviation = 0.1,
                                range_deviation = 0.3,
                                max_range = 50,
                                target_effects =
                                {
                                    {
                                        type = "activate-impact",
                                        deliver_category = "bullet"
                                    }
                                }
                            }
                        }
                    }
                }
             } , 8, {
      type = "projectile",
      ammo_category = "halo-3-magnum-ammo",

      cooldown = 30,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 18,
      sound = {"__Halo-Mod__/sounds/Halo 3/magnum_stereo1.wav",
        "__Halo-Mod__/sounds/Halo 3/magnum_stereo2.wav",
        "__Halo-Mod__/sounds/Halo 3/magnum_stereo3.wav",
        "__Halo-Mod__/sounds/Halo 3/magnum_stereo4.wav"}
    },{
      {type = "item", name = "pistol", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },{
      {type = "item", name = "firearm-magazine", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    })  
    
    
halo_gun("3", "shotgun",{
                target_type = "direction",
                action = {
                  {
                    type = "direct",
                    repeat_count = 16,
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
             } , 6, {
      type = "projectile",
      ammo_category = "halo-3-shotgun-ammo",

      cooldown = 30,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 18,
      sound = {"__Halo-Mod__/sounds/Halo 3/shotgun3.wav",
        "__Halo-Mod__/sounds/Halo 3/shotgun2.wav",
        "__Halo-Mod__/sounds/Halo 3/shotgun1.wav"}
    },{
      {type = "item", name = "shotgun", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },{
      {type = "item", name = "firearm-magazine", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    })   


halo_gun("3", "sniper-rifle",{
            target_type = "direction",
            action = {
              {
                type = "direct",
                action_delivery =
                {
                  {
                    type = "projectile",
                    starting_speed = 4,
                    projectile = "halo-bullet",
                    max_range = 200,
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
          } , 8, {
      type = "projectile",
      ammo_category = "halo-3-sniper-rifle-ammo",

      cooldown = 30,
      movement_slow_down_factor = 0.7,
      projectile_creation_distance = 1.125,
      range = 200,
      sound = {"__Halo-Mod__/sounds/Halo 3/sniper_fire_h3_1.wav",
        "__Halo-Mod__/sounds/Halo 3/sniper_fire_h3_2.wav",
        "__Halo-Mod__/sounds/Halo 3/sniper_fire_h3_3.wav",
        "__Halo-Mod__/sounds/Halo 3/sniper_fire_h3_4.wav"}
    },{
      {type = "item", name = "submachine-gun", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    },{
      {type = "item", name = "firearm-magazine", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    })   