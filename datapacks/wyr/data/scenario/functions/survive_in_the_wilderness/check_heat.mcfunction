scoreboard players set $mod random 10
function random:random
execute if entity @s[team=sitw,scores={sitw_heat_cool=..0,sitw_heat=1..}] if score $rand random matches 1.. run scoreboard players remove @s[scores={sitw_heat=1..}] sitw_heat 1
scoreboard players set @s sitw_heat_cool 120
execute if block 1003 65 -7 campfire[lit=false] run scoreboard players set @s sitw_heat_cool 1
scoreboard players operation @s sitw_heat_cool /= @s check_players
execute unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{color:4267021}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{Name:"{\"text\":\"Tattered Shirt\",\"color\":\"gray\",\"italic\":false}"}}}]}] at @s run scoreboard players add @s sitw_heat_cool 70
execute unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{color:4267021}}}]}] if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{Name:"{\"text\":\"Tattered Shirt\",\"color\":\"gray\",\"italic\":false}"}}}]}] at @s run scoreboard players add @s sitw_heat_cool 80
execute if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{color:4267021}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{Name:"{\"text\":\"Tattered Shirt\",\"color\":\"gray\",\"italic\":false}"}}}]}] at @s run scoreboard players add @s sitw_heat_cool 90
