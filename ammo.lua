
--[[
data:extend{
    {
        type = "ammo",
        name = "halo-plasma-rifle-ammo",
        icon = "__base__/graphics/icons/battery.png",
        ammo_category = "halo-plasma-rifle-ammo",
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
        magazine_size = 10,
        subgroup = "ammo",
        order = "a[basic-clips]-c[uranium-rounds-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 40*kg
      },{
        type = "ammo",
        name = "halo-plasma-pistol-ammo",
        icon = "__base__/graphics/icons/battery.png",
        ammo_category = "halo-plasma-rifle-ammo",
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
        magazine_size = 10,
        subgroup = "ammo",
        order = "a[basic-clips]-c[uranium-rounds-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 40*kg
      },,{
        type = "ammo",
        name = "halo-needler-ammo",
        icon = "__base__/graphics/icons/battery.png",
        ammo_category = "halo-needler-ammo",
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
        magazine_size = 10,
        subgroup = "ammo",
        order = "a[basic-clips]-c[uranium-rounds-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 40*kg
      },
}

]]
