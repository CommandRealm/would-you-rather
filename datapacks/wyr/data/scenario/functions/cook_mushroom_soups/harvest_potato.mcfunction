function scenario:cook_mushroom_soups/reset_potatoes
scoreboard players reset @s cms_farm_potato

execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 10000 0.75

execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:yellow_stained_glass_pane"}]}] run tag @s add cms_has_1
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if score $number cms_ingre_2 matches 5 run replaceitem entity @s hotbar.1 potato{cms_is_item:1,cms_item:2,HideFlags:63,display:{Name:'[{"text":"Potato","color":"#fff7c9","italic":false}]'}}
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:yellow_stained_glass_pane"}]}] run tag @s add cms_has_2
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if score $number cms_ingre_3 matches 5 run replaceitem entity @s hotbar.2 potato{cms_is_item:1,cms_item:3,HideFlags:63,display:{Name:'[{"text":"Potato","color":"#fff7c9","italic":false}]'}}
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:yellow_stained_glass_pane"}]}] run tag @s add cms_has_3
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if score $number cms_ingre_4 matches 5 run replaceitem entity @s hotbar.3 potato{cms_is_item:1,cms_item:4,HideFlags:63,display:{Name:'[{"text":"Potato","color":"#fff7c9","italic":false}]'}}
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:yellow_stained_glass_pane"}]}] run tag @s add cms_has_4
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if score $number cms_ingre_5 matches 5 run replaceitem entity @s hotbar.4 potato{cms_is_item:1,cms_item:5,HideFlags:63,display:{Name:'[{"text":"Potato","color":"#fff7c9","italic":false}]'}}


