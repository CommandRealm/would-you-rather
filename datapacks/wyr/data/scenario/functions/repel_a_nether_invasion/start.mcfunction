scoreboard players reset @a[team=rani,gamemode=adventure] death
scoreboard players set $time rani_timer 4800
scoreboard players set $rani active_scenario 1
function scenario:repel_a_nether_invasion/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue rani_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow rani_seconds

scoreboard players set $wave rani_timer 1
scoreboard players set $spawn_timer rani_timer 0
scoreboard players set $spawned rani_timer -100

summon marker 9982 69 -63 {Tags:["rani_die","rani_spawn"]}
summon marker 9978 68 -61 {Tags:["rani_die","rani_spawn"]}
summon marker 9974 68 -63 {Tags:["rani_die","rani_spawn"]}
summon marker 9969 68 -52 {Tags:["rani_die","rani_spawn"]}
summon marker 9970 68 -56 {Tags:["rani_die","rani_spawn"]}
summon marker 9967 68 -58 {Tags:["rani_die","rani_spawn"]}
summon marker 9965 69 -60 {Tags:["rani_die","rani_spawn"]}
summon marker 10004 67 -38 {Tags:["rani_die","rani_spawn"]}
summon marker 10004 67 -35 {Tags:["rani_die","rani_spawn"]}
summon marker 10002 68 -34 {Tags:["rani_die","rani_spawn"]}
summon marker 10006 68 -29 {Tags:["rani_die","rani_spawn"]}
summon marker 10008 67 -32 {Tags:["rani_die","rani_spawn"]}
summon marker 10009 68 -37 {Tags:["rani_die","rani_spawn"]}
summon marker 10025 68 -22 {Tags:["rani_die","rani_spawn"]}
summon marker 10029 68 -18 {Tags:["rani_die","rani_spawn"]}
summon marker 10032 68 -21 {Tags:["rani_die","rani_spawn"]}
summon marker 10036 68 -19 {Tags:["rani_die","rani_spawn"]}
summon marker 10044 69 5 {Tags:["rani_die","rani_spawn"]}
summon marker 10044 70 8 {Tags:["rani_die","rani_spawn"]}
summon marker 10040 69 8 {Tags:["rani_die","rani_spawn"]}
summon marker 10037 68 6 {Tags:["rani_die","rani_spawn"]}
summon marker 10030 68 6 {Tags:["rani_die","rani_spawn"]}
summon marker 10029 68 40 {Tags:["rani_die","rani_spawn"]}
summon marker 10026 68 38 {Tags:["rani_die","rani_spawn"]}
summon marker 10025 68 34 {Tags:["rani_die","rani_spawn"]}
summon marker 10021 68 30 {Tags:["rani_die","rani_spawn"]}
summon marker 10018 68 33 {Tags:["rani_die","rani_spawn"]}
summon marker 10016 68 37 {Tags:["rani_die","rani_spawn"]}
summon marker 10020 68 39 {Tags:["rani_die","rani_spawn"]}
summon marker 10024 68 43 {Tags:["rani_die","rani_spawn"]}
summon marker 10002 68 36 {Tags:["rani_die","rani_spawn"]}
summon marker 10005 68 30 {Tags:["rani_die","rani_spawn"]}
summon marker 10002 67 30 {Tags:["rani_die","rani_spawn"]}
summon marker 9995 68 31 {Tags:["rani_die","rani_spawn"]}
summon marker 9998 67 30 {Tags:["rani_die","rani_spawn"]}
summon marker 9995 68 25 {Tags:["rani_die","rani_spawn"]}
summon marker 9963 68 11 {Tags:["rani_die","rani_spawn"]}
summon marker 9961 68 12 {Tags:["rani_die","rani_spawn"]}
summon marker 9952 68 13 {Tags:["rani_die","rani_spawn"]}
summon marker 9954 68 12 {Tags:["rani_die","rani_spawn"]}
summon marker 9950 68 9 {Tags:["rani_die","rani_spawn"]}
summon marker 9948 68 -2 {Tags:["rani_die","rani_spawn"]}
summon marker 9947 68 0 {Tags:["rani_die","rani_spawn"]}
summon marker 9944 68 -3 {Tags:["rani_die","rani_spawn"]}
summon marker 9947 67 -21 {Tags:["rani_die","rani_spawn"]}
summon marker 9950 67 -22 {Tags:["rani_die","rani_spawn"]}
summon marker 9948 68 -26 {Tags:["rani_die","rani_spawn"]}
summon marker 9953 68 -23 {Tags:["rani_die","rani_spawn"]}
summon marker 9954 68 -17 {Tags:["rani_die","rani_spawn"]}
summon marker 9983 68 -20 {Tags:["rani_die","rani_spawn"]}
summon marker 9983 68 -23 {Tags:["rani_die","rani_spawn"]}
summon marker 9991 68 -16 {Tags:["rani_die","rani_spawn"]}
summon marker 10001 68 -7 {Tags:["rani_die","rani_spawn"]}
summon marker 10001 68 -11 {Tags:["rani_die","rani_spawn"]}
summon marker 10002 68 -2 {Tags:["rani_die","rani_spawn"]}
summon marker 9999 67 1 {Tags:["rani_die","rani_spawn"]}
summon marker 10003 67 2 {Tags:["rani_die","rani_spawn"]}
summon marker 10006 68 1 {Tags:["rani_die","rani_spawn"]}
summon marker 10034 73 -18 {Tags:["rani_die","rani_spawn"]}
summon marker 9972 69 -3 {Tags:["rani_die","rani_spawn"]}
summon marker 9971 69 -1 {Tags:["rani_die","rani_spawn"]}
summon marker 9969 69 -7 {Tags:["rani_die","rani_spawn"]}
summon marker 9964 69 -8 {Tags:["rani_die","rani_spawn"]}
summon marker 9966 68 -5 {Tags:["rani_die","rani_spawn"]}
summon marker 9963 68 -4 {Tags:["rani_die","rani_spawn"]}
summon marker 9969 68 3 {Tags:["rani_die","rani_spawn"]}
summon marker 9988 72 -22 {Tags:["rani_die","rani_spawn"]}

effect give @a[tag=playing,team=rani] instant_health 1 3 true

execute as @e[type=marker,tag=rani_spawn,sort=random,limit=10] at @s run function scenario:repel_a_nether_invasion/spawn
scoreboard players set $spawned rani_timer 0



# giving loot
give @a[team=rani,gamemode=adventure] iron_sword{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:1024,UUID:[I; 1, 1, 1, 1]},{AttributeName:"generic.attack_damage",Amount:7,UUID:[I; 2, 2, 2, 2]}],Unbreakable:1b,display:{Name:'[{"text":"Sword","color":"gray","italic":false}]'}}
give @a[team=rani,gamemode=adventure] golden_apple{display:{Name:'[{"text":"Golden ","color":"gold","italic":false},{"text":"Apple","color":"red"}]'}} 3
give @a[team=rani,gamemode=adventure] splash_potion{display:{Name:'[{"text":"Health ","color":"red","italic":false},{"text":"Potion","color":"light_purple"}]'},Potion:"healing"} 3