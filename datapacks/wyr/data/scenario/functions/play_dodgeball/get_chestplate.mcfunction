kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}},distance=..5]
clear @s leather_chestplate
execute if score $rand pd_random matches 1 run item replace entity @s armor.chest with leather_chestplate{HideFlags:63,display:{color:16711692}}
execute if score $rand pd_random matches 0 run item replace entity @s armor.chest with leather_chestplate{HideFlags:63,display:{color:8415}}