kill @e[tag=eadl_die]
##Item spawns:
summon area_effect_cloud 8014 54 39 {Duration:100000,Tags:["eadl_die","eadl_item_spawn"]}
summon area_effect_cloud 8028 55 45 {Duration:100000,Tags:["eadl_die","eadl_item_spawn"]}
summon area_effect_cloud 8050 55 40 {Duration:100000,Tags:["eadl_die","eadl_item_spawn"]}
summon area_effect_cloud 8049 64 8 {Duration:100000,Tags:["eadl_die","eadl_item_spawn"]}
summon area_effect_cloud 8055 54 15 {Duration:100000,Tags:["eadl_die","eadl_item_spawn"]}
kill @e[type=area_effect_cloud,sort=random,limit=2,tag=eadl_item_spawn]
tag @e[type=area_effect_cloud,tag=eadl_item_spawn,tag=!eadl_repeater,tag=!eadl_torch,tag=!eadl_dust,sort=random,limit=1] add eadl_repeater
tag @e[type=area_effect_cloud,tag=eadl_item_spawn,tag=!eadl_repeater,tag=!eadl_torch,tag=!eadl_dust,sort=random,limit=1] add eadl_torch
tag @e[type=area_effect_cloud,tag=eadl_item_spawn,tag=!eadl_repeater,tag=!eadl_torch,tag=!eadl_dust,sort=random,limit=1] add eadl_dust
execute at @e[type=area_effect_cloud,tag=eadl_repeater] run summon item ~ ~ ~ {Tags:["eadl_die","eadl_item"],Item:{id:"minecraft:repeater",Count:1b},PickupDelay:1000000}
execute at @e[type=area_effect_cloud,tag=eadl_torch] run summon item ~ ~ ~ {Tags:["eadl_die","eadl_item"],Item:{id:"minecraft:redstone_torch",Count:1b},PickupDelay:1000000}
execute at @e[type=area_effect_cloud,tag=eadl_dust] run summon item ~ ~ ~ {Tags:["eadl_die","eadl_item"],Item:{id:"minecraft:redstone",Count:1b},PickupDelay:1000000}

##Skull spawns:
##summon area_effect_cloud x y z
summon area_effect_cloud 8011 53 27 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8007 53 29 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8008 53 32 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8014 53 31 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8015 53 36 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8017 53 38 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8014 53 41 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8029 53 33 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8023 52 33 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8030 54 40 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8026 54 40 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8027 54 43 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8030 54 45 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8036 54 37 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8033 54 42 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8041 54 35 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8040 54 40 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8042 54 43 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8046 54 34 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8046 54 39 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8056 54 35 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8055 54 39 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8055 54 44 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8047 54 28 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8050 54 27 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8050 54 25 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8047 54 21 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8054 54 23 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8050 54 17 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8053 53 18 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8055 53 17 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8057 53 11 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8053 53 7 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8053 54 -7 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8057 54 -7 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8051 54 -1 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8047 54 2 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8049 54 6 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8048 54 8 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8037 54 11 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8044 54 10 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8043 54 9 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8040 54 6 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8042 58 -7 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8035 60 -2 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8043 63 -3 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8045 63 -1 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8052 63 -4 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8051 63 3 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8046 63 9 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8052 63 10 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8050 63 19 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8055 63 19 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
summon area_effect_cloud 8055 63 11 {Duration:100000,Tags:["eadl_die","eadl_skull"]}
execute as @e[type=area_effect_cloud,tag=eadl_skull] at @s run fill ~ ~ ~ ~ ~ ~ air replace wither_skeleton_skull
kill @e[type=area_effect_cloud,tag=eadl_skull,sort=random,limit=10]
execute as @e[type=area_effect_cloud,tag=eadl_skull] at @s run function scenario:explore_a_deserted_lab/set_skull
tag @e[type=area_effect_cloud,tag=eadl_skull,sort=random,limit=3] add eadl_actual_skull
tag @e[type=area_effect_cloud,tag=eadl_actual_skull,tag=!eadl_brute,tag=!eadl_standard,tag=!eadl_scout,sort=random,limit=1] add eadl_brute
tag @e[type=area_effect_cloud,tag=eadl_actual_skull,tag=!eadl_brute,tag=!eadl_standard,tag=!eadl_scout,sort=random,limit=1] add eadl_standard
tag @e[type=area_effect_cloud,tag=eadl_actual_skull,tag=!eadl_brute,tag=!eadl_standard,tag=!eadl_scout,sort=random,limit=1] add eadl_scout
kill @e[type=area_effect_cloud,tag=eadl_skull,tag=!eadl_actual_skull]

scoreboard players set $time eadl_timer 1800
scoreboard players set $eadl active_scenario 1
scoreboard players set @a[tag=playing,team=eadl] death 0
function scenario:explore_a_deserted_lab/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue eadl_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow eadl_seconds
scoreboard players set @a[tag=playing,team=eadl,gamemode=adventure] eadl_beep 0

tag @a[tag=playing,team=eadl,gamemode=adventure] remove eadl_has_1
tag @a[tag=playing,team=eadl,gamemode=adventure] remove eadl_has_2
tag @a[tag=playing,team=eadl,gamemode=adventure] remove eadl_has_3


title @a[tag=playing,team=eadl,gamemode=adventure] times 0 25 5