# called to make the giant eat

item replace entity @e[type=giant,tag=giant] weapon.mainhand with air
execute as @e[type=giant,tag=giant,limit=1] at @s if score @s giant_item matches 1 positioned ~ ~11.5 ~ run particle item melon_slice ~ ~ ~ 1.5 1 1.5 0.1 300
execute as @e[type=giant,tag=giant,limit=1] at @s if score @s giant_item matches 2 positioned ~ ~11.5 ~ run particle item cake ~ ~ ~ 1.5 1 1.5 0.1 300
execute as @e[type=giant,tag=giant,limit=1] at @s if score @s giant_item matches 3 positioned ~ ~11.5 ~ run particle item dried_kelp ~ ~ ~ 1.5 1 1.5 0.1 300
execute as @e[type=giant,tag=giant,limit=1] at @s if score @s giant_item matches 4 positioned ~ ~11.5 ~ run particle item honey_block ~ ~ ~ 1.5 1 1.5 0.1 300
execute as @e[type=giant,tag=giant,limit=1] at @s if score @s giant_item matches 5 positioned ~ ~11.5 ~ run particle item cooked_beef ~ ~ ~ 1.5 1 1.5 0.1 300
execute as @e[type=giant,tag=giant,limit=1] at @s if score @s giant_item matches 6 positioned ~ ~11.5 ~ run particle item glow_berries ~ ~ ~ 1.5 1 1.5 0.1 300
execute as @a[team=giant] at @s run playsound minecraft:entity.zombie.ambient master @s ~ ~ ~ 1 0
execute as @a[team=giant] at @s run playsound minecraft:entity.player.burp master @s ~ ~ ~ 1 0.67