require("constants")
--[[
data:extend{
    {
        type = "recipe",
        name = "halo-ce-ar",
        enabled = true,
        energy_required = 8, -- time to craft in seconds (at crafting speed 1)
        ingredients = {
          {type = "item", name = "submachine-gun", amount = 1},
          {type = "item", name = "iron-plate", amount = 1}
        },
        results = {{type = "item", name = "halo-ce-ar", amount = 1}}
      },
      {
        type = "recipe",
        name = "halo-ce-pistol",
        enabled = true,
        energy_required = 8, -- time to craft in seconds (at crafting speed 1)
        ingredients = {
          {type = "item", name = "pistol", amount = 1},
          {type = "item", name = "iron-plate", amount = 1}
        },
        results = {{type = "item", name = "halo-ce-pistol", amount = 1}}
      },
      {
        type = "recipe",
        name = "halo-ce-shotgun",
        enabled = true,
        energy_required = 8, -- time to craft in seconds (at crafting speed 1)
        ingredients = {
          {type = "item", name = "shotgun", amount = 1},
          {type = "item", name = "iron-plate", amount = 1}
        },
        results = {{type = "item", name = "halo-ce-shotgun", amount = 1}}
      },
      {
        type = "recipe",
        name = "halo-ce-rocket-launcher",
        enabled = true,
        energy_required = 8, -- time to craft in seconds (at crafting speed 1)
        ingredients = {
          {type = "item", name = "rocket-launcher", amount = 1},
          {type = "item", name = "iron-plate", amount = 1}
        },
        results = {{type = "item", name = "halo-ce-rocket-launcher", amount = 1}}
      },
      {
        type = "recipe",
        name = "halo-ce-sniper-rifle",
        enabled = true,
        energy_required = 8, -- time to craft in seconds (at crafting speed 1)
        ingredients = {
          {type = "item", name = "submachine-gun", amount = 1},
          {type = "item", name = "iron-stick", amount = 1}
        },
        results = {{type = "item", name = "halo-ce-sniper-rifle", amount = 1}}
      },{
        type = "recipe",
        name = "halo-ce-plasma-rifle",
        enabled = true,
        energy_required = 8, -- time to craft in seconds (at crafting speed 1)
        ingredients = {
          {type = "item", name = "submachine-gun", amount = 1},
          {type = "item", name = "copper-plate", amount = 1}
        },
        results = {{type = "item", name = "halo-ce-plasma-rifle", amount = 1}}
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
        name = "halo-ce-needler",
        enabled = true,
        energy_required = 8, -- time to craft in seconds (at crafting speed 1)
        ingredients = {
          {type = "item", name = "submachine-gun", amount = 1},
          {type = "item", name = "sulfur", amount = 1}
        },
        results = {{type = "item", name = "halo-ce-needler", amount = 1}}
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
      }
}

for _,weapon in ipairs(energy_weapons) do
  data:extend{{
    type = "recipe",
    name = "fixing-" .. weapon,
    icons = {{}
    enabled = true,
    energy_required = 8, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
      {type = "item", name = "overheated-" .. weapon, amount = 1}
    },
    results = {{type = "item", name = weapon, amount = 1}}
  }}
end

]]