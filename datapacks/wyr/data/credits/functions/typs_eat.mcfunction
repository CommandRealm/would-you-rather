scoreboard players set $direction typs_direction 0
replaceitem entity @e[type=armor_stand,tag=typs] weapon.mainhand air
execute at @e[type=armor_stand,tag=typs] run particle minecraft:block soul_soil ~ ~1.75 ~ 0.05 0.05 0.05 0.5 25 force @a
execute at @e[type=armor_stand,tag=typs] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 0.15 1
