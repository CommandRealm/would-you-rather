execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:white_stained_glass_pane"}]}] run tag @s add cms_has_0
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if score $number cms_ingre_1 matches 0 run replaceitem entity @s hotbar.0 red_mushroom{cms_is_item:1,cms_item:1,HideFlags:63,display:{Name:'[{"text":"Red Mushroom","color":"red","italic":false}]'}}
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:white_stained_glass_pane"}]}] run tag @s add cms_has_1
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if score $number cms_ingre_2 matches 0 run replaceitem entity @s hotbar.1 red_mushroom{cms_is_item:1,cms_item:2,HideFlags:63,display:{Name:'[{"text":"Red Mushroom","color":"red","italic":false}]'}}
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:white_stained_glass_pane"}]}] run tag @s add cms_has_2
execute unless entity @s[nbt={Inventory:[{tag:{cms_is_item:1}}]}] if score $number cms_ingre_3 matches 0 run replaceitem entity @s hotbar.2 red_mushroom{cms_is_item:1,cms_item:3,HideFlags:63,display:{Name:'[{"text":"Red Mushroom","color":"red","italic":false}]'}}

playsound minecraft:entity.item.pickup master @s ~ ~ ~ 10000 0.75

