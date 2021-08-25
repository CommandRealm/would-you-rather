##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=ptasv] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=ptasv_tutorial,sort=nearest,limit=1] @s


execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=5}] run title @a[team=ptasv,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Parkour through a sky village\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=5}] run title @a[team=ptasv,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=5}] as @a[team=ptasv,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=5}] as @a[team=ptasv,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=75}] run tellraw @a[team=ptasv,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Parkour through a sky village\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=75}] as @a[team=ptasv,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=90}] run tellraw @a[team=ptasv,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Jump across platforms to progress through the map.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=90}] as @a[team=ptasv,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150}] run tp @e[type=armor_stand,tag=ptasv_tutorial] 38000 68 0 0 0
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150}] run tellraw @a[team=ptasv,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Some platforms will move back and forth.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150}] as @a[team=ptasv,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=210}] run tp @e[type=armor_stand,tag=ptasv_tutorial] 37989 77 15 38 0
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=210}] run tellraw @a[team=ptasv,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Concrete blocks will give you potion effects.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=210}] as @a[team=ptasv,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=270}] run tp @e[type=armor_stand,tag=ptasv_tutorial] 38003 101 -44 90 5
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=270}] run tellraw @a[team=ptasv,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Reach the end of the course before dying and before the timer hits zero to beat the scenario.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=270}] as @a[team=ptasv,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=370}] run function scenario:parkour_through_a_sky_village/tutorial_end


##Effects:
execute as @e[type=area_effect_cloud,tag=ptasv_platform_1] at @s store result score @s ptasv_position run data get entity @s Pos[2] 100
scoreboard players remove @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_delay=1..}] ptasv_delay 1
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150..209}] as @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=0,ptasv_delay=0}] at @s run tp @s ~ ~ ~0.15
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150..209}] as @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=1,ptasv_delay=0}] at @s run tp @s ~ ~ ~-0.15
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150..209}] run scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=0,ptasv_position=1150..}] ptasv_delay 40
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150..209}] run scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=1,ptasv_position=..550}] ptasv_delay 40
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150..209}] run scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=0,ptasv_position=1150..}] ptasv_direction 1
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150..209}] run scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=1,ptasv_position=..550}] ptasv_direction 0
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150..209}] at @e[type=area_effect_cloud,tag=ptasv_platform_1] run fill ~-2 ~1 ~-2 ~2 ~1 ~2 air replace white_stained_glass
execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv,scores={tutorial=150..209}] at @e[type=area_effect_cloud,tag=ptasv_platform_1] run fill ~-1 ~1 ~-1 ~1 ~1 ~1 white_stained_glass replace air

execute at @e[type=area_effect_cloud,tag=ptasv_platform,scores={ptasv_delay=1}] run playsound minecraft:block.piston.extend master @a ~ ~ ~ 0.75 0
execute at @e[tag=ptasv_platform,type=area_effect_cloud] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.75 1.25


particle minecraft:sneeze 37986 76.1 20 0.25 0 0.25 0.015 1
particle minecraft:sneeze 37985 76.1 20 0.25 0 0.25 0.015 1
particle minecraft:sneeze 37985 76.1 19 0.25 0 0.25 0.015 1

particle end_rod 37994 106 -46 0 0 0 0.05 1
particle end_rod 37994 106 -42 0 0 0 0.05 1

execute if entity @a[tag=in_tutorial,tag=playing,team=ptasv] run schedule function scenario:parkour_through_a_sky_village/tutorial 1t