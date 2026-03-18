
function halo_gun(game, name, type_ammo, magazine, parameters_attack, gun_ingredients, ammo_ingredients)
    local item_sounds = require("__base__.prototypes.item_sounds")
    local gun_name = "halo-" .. game .. "-" .. name
    data:extend{
        {
            type = "ammo-category",
            name = gun_name .. "-ammo",
            subgroup = "ammo-category"
        },{
            type = "ammo",
            name = gun_name .. "-ammo",
            icons = {{ icon = "__base__/graphics/icons/firearm-magazine.png"},{ icon = "__Halo-Mod__/graphics/icons/" .. gun_name .. ".png"}},
            ammo_category = gun_name .. "-ammo",
            ammo_type = type_ammo,
            magazine_size = magazine,
            subgroup = "ammo",
            order = "a[basic-clips]-c[uranium-rounds-magazine]",
            inventory_move_sound = item_sounds.ammo_small_inventory_move,
            pick_sound = item_sounds.ammo_small_inventory_pickup,
            drop_sound = item_sounds.ammo_small_inventory_move,
            stack_size = 100,
            weight = 40*kg
        },{
        type = "gun",
        name = gun_name,
        icon = "__Halo-Mod__/graphics/icons/" .. gun_name .. ".png",
        icon_size = 64,
        subgroup = "gun",
        order = "a[basic-clips]-b[submachine-gun]",
        inventory_move_sound = item_sounds.weapon_large_inventory_move,
        pick_sound = item_sounds.weapon_large_inventory_pickup,
        drop_sound = item_sounds.weapon_large_inventory_move,
        attack_parameters = parameters_attack,
        stack_size = 5
        },{
            type = "recipe",
            name = gun_name,
            enabled = true,
            energy_required = 8, -- time to craft in seconds (at crafting speed 1)
            ingredients = gun_ingredients,
            results = {{type = "item", name = gun_name, amount = 1}}
        },{
            type = "recipe",
            name = gun_name .. "-ammo",
            enabled = true,
            energy_required = 1, -- time to craft in seconds (at crafting speed 1)
            ingredients = ammo_ingredients,
            results = {{type = "item", name = gun_name .. "-ammo", amount = 1}}
        }
    }
end


function halo_gun1(game, name)
    local item_sounds = require("__base__.prototypes.item_sounds")
    local gun_name = "halo-" .. game .. "-" .. name
    data:extend{
        {
            type = "ammo-category",
            name = gun_name .. "-ammo",
            subgroup = "ammo-category"
        },{
            type = "ammo",
            name = gun_name .. "-ammo",
            icons = {{ icon = "__base__/graphics/icons/firearm-magazine.png"},{ icon = "__Halo-Mod__/graphics/icons/" .. gun_name .. ".png"}},
            ammo_category = gun_name .. "-ammo",
            ammo_type = type_ammo,
            magazine_size = magazine,
            subgroup = "ammo",
            order = "a[basic-clips]-c[uranium-rounds-magazine]",
            inventory_move_sound = item_sounds.ammo_small_inventory_move,
            pick_sound = item_sounds.ammo_small_inventory_pickup,
            drop_sound = item_sounds.ammo_small_inventory_move,
            stack_size = 100,
            weight = 40*kg
        },{
        type = "gun",
        name = gun_name,
        icon = "__Halo-Mod__/graphics/icons/" .. gun_name .. ".png",
        icon_size = 64,
        subgroup = "gun",
        order = "a[basic-clips]-b[submachine-gun]",
        inventory_move_sound = item_sounds.weapon_large_inventory_move,
        pick_sound = item_sounds.weapon_large_inventory_pickup,
        drop_sound = item_sounds.weapon_large_inventory_move,
        attack_parameters = {
            type = "projectile",
            ammo_category = gun_name .. "-ammo",

            cooldown = 5,
            cooldown_deviation = 0.1,
            movement_slow_down_factor = 0.7,
            projectile_creation_distance = 1.125,
            range = 18,
        },
        stack_size = 5
        },{
            type = "recipe",
            name = gun_name,
            enabled = true,
            energy_required = 8, -- time to craft in seconds (at crafting speed 1)
            ingredients = gun_ingredients,
            results = {{type = "item", name = gun_name, amount = 1}}
        },{
            type = "recipe",
            name = gun_name .. "-ammo",
            enabled = true,
            energy_required = 1, -- time to craft in seconds (at crafting speed 1)
            ingredients = ammo_ingredients,
            results = {{type = "item", name = gun_name .. "-ammo", amount = 1}}
        }
    }
end




