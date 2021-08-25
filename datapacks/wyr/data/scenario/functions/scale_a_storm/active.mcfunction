#timer:
scoreboard players remove $time sas_timer 1
scoreboard players operation : sas_timer = $time sas_timer
scoreboard players operation : sas_timer /= $20 number
scoreboard players add : sas_timer 1
execute unless score : sas_timer = : sas_seconds run scoreboard players operation : sas_seconds = : sas_timer


#activity:
execute if score $sas active_scenario matches 1 if score $time sas_timer matches 1.. run schedule function scenario:scale_a_storm/active 1t
execute if score $sas active_scenario matches 1 unless entity @a[team=sas] run function scenario:scale_a_storm/end

execute as @a[team=sas,tag=playing,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}]}] run function scenario:scale_a_storm/get_riptide_1_trident
execute as @a[team=sas,tag=playing,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:2}]}}]}] run function scenario:scale_a_storm/get_riptide_2_trident


execute as @a[team=sas,tag=playing,gamemode=adventure] at @s run particle falling_water ~ ~1 ~ 5 5 5 0.25 10 normal @s

execute as @a[team=sas,tag=playing,gamemode=adventure] at @s run playsound minecraft:weather.rain weather @s ~ ~ ~ 0.1


execute as @a[tag=playing,team=sas,gamemode=adventure] at @s at @s[y=-5,distance=..10] run kill @s

execute as @a[tag=playing,team=sas,gamemode=adventure,scores={death=1..}] at @s run function scenario:scale_a_storm/fail
execute if score $time sas_timer matches 0 run function scenario:scale_a_storm/timer_over
execute as @a[x=3000,y=179,z=0,distance=..7,tag=playing,team=sas,gamemode=adventure] at @s at @s[y=179,dy=0] run function scenario:scale_a_storm/success



execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 1 1 1 2 ^ ^ ^1
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 0 0 0 2 ^ ^ ^2
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 1 1 1 2 ^ ^ ^-3
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 0 0 0 2 ^ ^ ^-4
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 1 1 1 2 ^ ^ ^5
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 0 0 0 2 ^ ^ ^6
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 1 1 1 2 ^ ^ ^-7



