#timer:
scoreboard players remove $time ptasv_timer 1
scoreboard players operation : ptasv_timer = $time ptasv_timer
scoreboard players operation : ptasv_timer /= $20 number
scoreboard players add : ptasv_timer 1
execute unless score : ptasv_timer = : ptasv_seconds run scoreboard players operation : ptasv_seconds = : ptasv_timer





#activity:
execute if score $ptasv active_scenario matches 1 if score $time ptasv_timer matches 1.. run schedule function scenario:parkour_through_a_sky_village/active 1t
execute if score $ptasv active_scenario matches 1 unless entity @a[team=ptasv] run function scenario:parkour_through_a_sky_village/end


execute as @a[tag=playing,team=ptasv,gamemode=adventure] at @s run particle happy_villager ~ ~ ~ 5 5 5 0 1 normal @s

##Z movers
execute as @e[type=area_effect_cloud,tag=ptasv_x] at @s store result score @s ptasv_position run data get entity @s Pos[0] 100
execute as @e[type=area_effect_cloud,tag=ptasv_z] at @s store result score @s ptasv_position run data get entity @s Pos[2] 100




##Platform 1
execute as @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=1,ptasv_delay=0}] at @s run tp @s ~ ~ ~0.15
execute as @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=0,ptasv_delay=0}] at @s run tp @s ~ ~ ~-0.15
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=1,ptasv_position=1150..}] ptasv_delay 40
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=0,ptasv_position=..550}] ptasv_delay 40
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=1,ptasv_position=1150..}] ptasv_direction 0
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_1,scores={ptasv_direction=0,ptasv_position=..550}] ptasv_direction 1
execute at @e[type=area_effect_cloud,tag=ptasv_platform_1] run fill ~-2 ~1 ~-2 ~2 ~1 ~2 air replace white_stained_glass
execute at @e[type=area_effect_cloud,tag=ptasv_platform_1] run fill ~-1 ~1 ~-1 ~1 ~1 ~1 white_stained_glass replace air


##Platform 2
execute as @e[type=area_effect_cloud,tag=ptasv_platform_2,scores={ptasv_direction=0,ptasv_delay=0}] at @s run tp @s ~ ~ ~0.15
execute as @e[type=area_effect_cloud,tag=ptasv_platform_2,scores={ptasv_direction=1,ptasv_delay=0}] at @s run tp @s ~ ~ ~-0.15
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_2,scores={ptasv_direction=0,ptasv_position=4350..}] ptasv_direction 1
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_2,scores={ptasv_direction=1,ptasv_position=..3750}] ptasv_direction 0
execute at @e[type=area_effect_cloud,tag=ptasv_platform_2] run fill ~ ~1 ~-2 ~ ~1 ~2 air replace white_stained_glass
execute at @e[type=area_effect_cloud,tag=ptasv_platform_2] run fill ~ ~1 ~-1 ~ ~1 ~1 white_stained_glass replace air

##Platform 3
execute as @e[type=area_effect_cloud,tag=ptasv_platform_3,scores={ptasv_direction=0,ptasv_delay=0}] at @s run tp @s ~ ~ ~-0.15
execute as @e[type=area_effect_cloud,tag=ptasv_platform_3,scores={ptasv_direction=1,ptasv_delay=0}] at @s run tp @s ~ ~ ~0.75
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_3,scores={ptasv_direction=0,ptasv_position=..-3750}] ptasv_delay 50
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_3,scores={ptasv_direction=1,ptasv_position=-2150..}] ptasv_delay 50
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_3,scores={ptasv_direction=0,ptasv_position=..-3750}] ptasv_direction 1
scoreboard players set @e[type=area_effect_cloud,tag=ptasv_platform_3,scores={ptasv_direction=1,ptasv_position=-2150..}] ptasv_direction 0
execute at @e[type=area_effect_cloud,tag=ptasv_platform_3] run fill ~10 ~1 ~3 ~-11 ~1 ~-3 air replace white_stained_glass
execute at @e[type=area_effect_cloud,tag=ptasv_platform_3] run fill ~10 ~1 ~2 ~-11 ~1 ~-1 white_stained_glass replace air
execute at @e[tag=ptasv_platform,type=area_effect_cloud,tag=ptasv_platform_3] positioned ~5 ~ ~ run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.75 1.25
execute at @e[tag=ptasv_platform,type=area_effect_cloud,tag=ptasv_platform_3] positioned ~-5.5 ~ ~ run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.75 1.25


scoreboard players remove @e[type=area_effect_cloud,tag=ptasv_platform,scores={ptasv_delay=1..}] ptasv_delay 1
execute at @e[type=area_effect_cloud,tag=ptasv_platform,scores={ptasv_delay=1}] run playsound minecraft:block.piston.extend master @a ~ ~ ~ 0.75 0
execute at @e[tag=ptasv_platform,type=area_effect_cloud] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.75 1.25

##Effect blocks
execute as @a[tag=playing,team=ptasv,gamemode=adventure] at @s positioned ~0.3 ~ ~0.3 if block ~ ~-0.25 ~ #minecraft:parkour_effect_blocks run function scenario:parkour_through_a_sky_village/get_effect
execute as @a[tag=playing,team=ptasv,gamemode=adventure] at @s positioned ~-0.3 ~ ~0.3 if block ~ ~-0.25 ~ #minecraft:parkour_effect_blocks run function scenario:parkour_through_a_sky_village/get_effect
execute as @a[tag=playing,team=ptasv,gamemode=adventure] at @s positioned ~0.3 ~ ~-0.3 if block ~ ~-0.25 ~ #minecraft:parkour_effect_blocks run function scenario:parkour_through_a_sky_village/get_effect
execute as @a[tag=playing,team=ptasv,gamemode=adventure] at @s positioned ~-0.3 ~ ~-0.3 if block ~ ~-0.25 ~ #minecraft:parkour_effect_blocks run function scenario:parkour_through_a_sky_village/get_effect


scoreboard players remove @a[tag=playing,team=ptasv,gamemode=adventure,scores={ptasv_duration=1..}] ptasv_duration 1
effect give @a[tag=playing,team=ptasv,gamemode=adventure,scores={ptasv_duration=1..,ptasv_effect=1}] jump_boost 1 5 true
effect give @a[tag=playing,team=ptasv,gamemode=adventure,scores={ptasv_duration=1..,ptasv_effect=2}] levitation 1 4 true
effect clear @a[tag=playing,team=ptasv,gamemode=adventure,scores={ptasv_duration=0}] jump_boost
effect clear @a[tag=playing,team=ptasv,gamemode=adventure,scores={ptasv_duration=0}] levitation


particle end_rod 37994 106 -46 0 0 0 0.05 1
particle end_rod 37994 106 -42 0 0 0 0.05 1

execute as @a[x=37990,y=101,z=-44,distance=..5,tag=playing,team=ptasv,gamemode=adventure] at @s run function scenario:parkour_through_a_sky_village/success

execute as @a[tag=playing,team=ptasv,gamemode=adventure] at @s run particle cloud ~ 50 ~ 5 0 5 0 20 normal @s
execute as @a[tag=playing,team=ptasv,gamemode=adventure] at @s at @s[y=40,distance=..10] run function scenario:parkour_through_a_sky_village/fail
execute as @a[tag=playing,team=ptasv,gamemode=adventure,scores={death=1..}] at @s run function scenario:parkour_through_a_sky_village/fail


execute if score $time ptasv_timer matches 1 run function scenario:parkour_through_a_sky_village/timer_over


particle minecraft:sneeze 37986 76.1 20 0.25 0 0.25 0.015 1
particle minecraft:sneeze 37985 76.1 20 0.25 0 0.25 0.015 1
particle minecraft:sneeze 37985 76.1 19 0.25 0 0.25 0.015 1
particle minecraft:sneeze 37978 82.1 29 0.25 0 0.25 0.015 1
particle minecraft:sneeze 37977 82.1 29 0.25 0 0.25 0.015 1
particle minecraft:sneeze 37977 82.1 30 0.25 0 0.25 0.015 1
particle minecraft:sneeze 37976 82.1 30 0.25 0 0.25 0.015 1
particle minecraft:sneeze 38002 97.1 -43 0.25 0 0.25 0.015 1
particle minecraft:sneeze 38002 97.1 -44 0.25 0 0.25 0.015 1
particle minecraft:sneeze 38003 97.1 -44 0.25 0 0.25 0.015 1
particle minecraft:sneeze 38003 97.1 -43 0.25 0 0.25 0.015 1
particle minecraft:firework 38014 94.1 16 0.25 0 0.25 0.015 1
##

execute as @a[tag=playing,gamemode=adventure,team=ptasv] at @s unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run function scenario:parkour_through_a_sky_village/get_boots

