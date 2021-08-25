##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=bafe] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=bafe_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe] run schedule function scenario:become_a_fan/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=5}] run title @a[team=bafe,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Become a fan engineer\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=5}] run title @a[team=bafe,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=5}] as @a[team=bafe,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=5}] as @a[team=bafe,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=75}] run tellraw @a[team=bafe,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Become a fan engineer\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=75}] as @a[team=bafe,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=90}] run tellraw @a[team=bafe,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The fan will turn on at the start of the scenario. You will start floating up.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=90}] as @a[team=bafe,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=190}] run tp @e[type=armor_stand,tag=bafe_tutorial] 12002 76 9 180 -50
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=190}] run tellraw @a[team=bafe,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Hitting your head on something while going up will give you blindness.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=190}] as @a[team=bafe,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=270}] run tp @e[type=armor_stand,tag=bafe_tutorial] 12002 186 1 0 -90
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=270}] run tellraw @a[team=bafe,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Reach the green particles at the top to win before the fan turns off.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=270}] as @a[team=bafe,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=350}] run function scenario:become_a_fan/tutorial_end


##Effects:



execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12011 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12010 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12009 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12008 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12007 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12006 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12005 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12004 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12003 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12002 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12001 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 12000 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 11999 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 11998 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 11997 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 11996 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 11995 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 11994 198 1 0 0 6 1 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bafe,scores={tutorial=260..350}] run particle dust 0 1 0 1 11993 198 1 0 0 6 1 10


execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~13 0
fill 11991 49 12 12013 49 -10 air replace minecraft:smooth_stone_slab
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^ ^ ^ ^ iron_block
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^1 ^1 ^ ^1 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^2 ^1 ^ ^2 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^3 ^1 ^ ^3 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^4 ^1 ^ ^4 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^5 ^1 ^ ^5 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^6 ^1 ^ ^6 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^7 ^1 ^ ^7 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^8 ^1 ^ ^8 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^9 ^1 ^ ^9 minecraft:smooth_stone_slab replace air

setblock 12002 48 1 minecraft:sea_lantern