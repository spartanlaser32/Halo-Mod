require("constants")
local weapons_to_cool = {}
script.on_event(defines.events.on_script_trigger_effect,
  function(event)
    --game.print("fire")
      if event.effect_id == "weapon_heat" then
        --game.print("fire2")
        local character = event.source_entity
        local index = character.selected_gun_index
        local gun = character.get_inventory(defines.inventory.character_guns)[index]
        local currHealth = gun.health
        local name = gun.name
        --game.print(weapon_heating[name])
        currHealth = currHealth - weapon_heating[name]
        if currHealth > 0 then
          gun.health = currHealth
          local flag = false
          for _, weapon in ipairs(weapons_to_cool) do
            if weapon == gun then flag = true end
          end
          if flag == false then table.insert(weapons_to_cool, gun) end
        else 
          weapons_to_cool[gun] = nil
          --game.print("switch")

          character.get_inventory(defines.inventory.character_guns)[index].set_stack({name="overheated-" .. name})
          --game.print(character.get_inventory(defines.inventory.character_guns)[index])
          game.play_sound{path=name .."-overheat", position=character.position}
        end
        local n = #weapons_to_cool
        local j=0
        for i=1,n do
          if weapons_to_cool[i]~=nil then
            j=j+1
            weapons_to_cool[j]=weapons_to_cool[i]
          end
        end
        for i=j+1,n do
          weapons_to_cool[i]=nil
        end
      end
  end
)

script.on_nth_tick(10,
  function(event)
    for i=1, #weapons_to_cool do
      local weapon = weapons_to_cool[i]
      if weapon.valid_for_read and weapon ~= nil and weapon_heating[weapon.name] ~= nil then
        --game.print("THIS WEAPON IS SAFE TO COOL DOWN")
        --game.print(weapon_heating[weapon.name])
        local currHealth = weapon.health + (weapon_heating[weapon.name] / 6)
        if currHealth >= 1  then
          weapon.health = 1
          weapons_to_cool[i] = nil
        else
          weapon.health = currHealth
        end
      end
    end
    local n = #weapons_to_cool
    local j=0
    for i=1,n do
      if weapons_to_cool[i]~=nil then
          j=j+1
          weapons_to_cool[j]=weapons_to_cool[i]
      end
    end
    for i=j+1,n do
      weapons_to_cool[i]=nil
    end

  end
)
