tp @e[tag=saru_die] 0 0 0
kill @e[tag=saru_die]

summon area_effect_cloud 29030 67 -19 {Duration:1,Tags:["saru_commander_spawn"]}
summon area_effect_cloud 29048 67 -2 {Duration:1,Tags:["saru_commander_spawn"]}
summon area_effect_cloud 29041 67 17 {Duration:1,Tags:["saru_commander_spawn"]}
summon area_effect_cloud 29021 73 38 {Duration:1,Tags:["saru_commander_spawn"]}
summon area_effect_cloud 29047 68 39 {Duration:1,Tags:["saru_commander_spawn"]}
summon area_effect_cloud 29031 67 3 {Duration:1,Tags:["saru_commander_spawn"]}

execute as @e[type=area_effect_cloud,tag=saru_commander_spawn,sort=random,limit=3] at @s run function scenario:stop_a_robot_uprising/create_commander
kill @e[tag=saru_commander_spawn,type=area_effect_cloud]
execute as @e[tag=saru_commander,type=zombie] at @s positioned ~2 ~ ~ run function scenario:stop_a_robot_uprising/random_guard
execute as @e[tag=saru_commander,type=zombie] at @s positioned ~-2 ~ ~ run function scenario:stop_a_robot_uprising/random_guard
execute as @e[tag=saru_commander,type=zombie] at @s positioned ~ ~ ~2 run function scenario:stop_a_robot_uprising/random_guard
execute as @e[tag=saru_commander,type=zombie] at @s positioned ~ ~ ~-2 run function scenario:stop_a_robot_uprising/random_guard

execute positioned 29015 67 -12 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29019 67 -20 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29028 67 -20 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29038 67 -24 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29033 67 -11 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29028 67 -6 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29048 67 -5 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29046 66 -20 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29048 67 9 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29027 67 20 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29015 67 16 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29021 67 28 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29014 67 32 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29037 67 39 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29046 68 39 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29053 68 32 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29053 68 39 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29064 72 38 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29064 72 34 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29048 74 23 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29022 67 7 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29023 67 0 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29036 67 4 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 28992 67 14 run function scenario:stop_a_robot_uprising/random_guard
execute positioned 29000 67 28 run function scenario:stop_a_robot_uprising/random_guard

execute at @e[type=zombie,tag=saru_die,sort=random,limit=2] run function scenario:stop_a_robot_uprising/random_guard
execute at @e[type=zombie,tag=saru_die,sort=random,limit=2] run function scenario:stop_a_robot_uprising/random_guard
execute at @e[type=zombie,tag=saru_die,sort=random,limit=2] run function scenario:stop_a_robot_uprising/random_guard
execute at @e[type=zombie,tag=saru_die,sort=random,limit=2] run function scenario:stop_a_robot_uprising/random_guard
execute at @e[type=zombie,tag=saru_die,sort=random,limit=2] run function scenario:stop_a_robot_uprising/random_guard
team join saru_enemy @e[type=zombie,tag=saru_die]
team join saru_enemy @e[type=skeleton,tag=saru_die]
execute as @a[tag=playing,team=saru] at @s at @e[type=zombie,tag=saru_die,sort=random,limit=2] run function scenario:stop_a_robot_uprising/random_guard
effect give @e[type=zombie,tag=saru_tnt] weakness 10000 255 true

scoreboard players set $time saru_timer 4200
scoreboard players set $saru active_scenario 1

execute as @a[tag=playing,team=saru,gamemode=adventure] store result score @s check_players if entity @a[tag=playing,team=saru,gamemode=adventure]
scoreboard players set @a[tag=playing,team=saru,scores={check_players=1}] saru_lives 4
scoreboard players set @a[tag=playing,team=saru,scores={check_players=2..}] saru_lives 3
scoreboard players set @a[tag=playing,team=saru] death 0
execute as @a[tag=playing,team=saru,gamemode=adventure] at @s run function scenario:stop_a_robot_uprising/get_items

effect give @e[type=zombie,tag=saru_commander] glowing 100000 255 true
effect give @e[type=zombie,tag=saru_die] invisibility 100000 255 true
effect give @e[type=skeleton,tag=saru_die] invisibility 100000 255 true
effect give @e[type=zombie,tag=saru_die] speed 100000 1 true

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue saru_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow saru_seconds

team join red Commanders:
scoreboard players set Commanders: saru_seconds 3

function scenario:stop_a_robot_uprising/active


tellraw @a[team=saru] [{"text":"Reminder: ","color":"green","bold":true},{"text":"This scenario uses spam-click PvP.","color":"gray","bold":false}]