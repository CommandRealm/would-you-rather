##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=sas] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=sas_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=sas] run schedule function scenario:scale_a_storm/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=5}] run title @a[team=sas,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Scale a storm\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=5}] run title @a[team=sas,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=5}] as @a[team=sas,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=5}] as @a[team=sas,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=75}] run tellraw @a[team=sas,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Scale a storm\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=75}] as @a[team=sas,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=90}] run tellraw @a[team=sas,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Use riptide tridents to climb the storm.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=90}] as @a[team=sas,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=160}] run tp @e[type=armor_stand,tag=sas_tutorial] 3006 164 -7 30 -40
execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=160}] run tellraw @a[team=sas,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Go through the checkered circle at the top before time runs out to beat the scenario.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=160}] as @a[team=sas,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=sas,scores={tutorial=270}] run function scenario:scale_a_storm/tutorial_end


##Effects:



execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 1 1 1 2 ^ ^ ^1
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 0 0 0 2 ^ ^ ^2
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 1 1 1 2 ^ ^ ^-3
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 0 0 0 2 ^ ^ ^-4
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 1 1 1 2 ^ ^ ^5
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 0 0 0 2 ^ ^ ^6
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned 3000 179 0 run particle dust 1 1 1 2 ^ ^ ^-7