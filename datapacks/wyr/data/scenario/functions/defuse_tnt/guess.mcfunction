kill @e[tag=dab_code_s]
summon area_effect_cloud 25990 77.1 6 {Duration:1000000,Tags:["infinite","dab_code_s"]}
summon area_effect_cloud 25990 77.1 5 {Duration:1000000,Tags:["infinite","dab_code_s"]}
summon area_effect_cloud 25990 77.1 4 {Duration:1000000,Tags:["infinite","dab_code_s"]}

tag @e[tag=display_dab_code,type=area_effect_cloud] remove display_dab_code
summon area_effect_cloud 25990 77 6 {Duration:1,Tags:["display_dab_code","dab_guess_1"]}
execute as @e[type=area_effect_cloud,tag=display_dab_code] at @s run function scenario:defuse_tnt/name_display_code
tag @e[tag=display_dab_code,type=area_effect_cloud] remove display_dab_code
summon area_effect_cloud 25990 77 5 {Duration:1,Tags:["display_dab_code","dab_guess_2"]}
execute as @e[type=area_effect_cloud,tag=display_dab_code] at @s run function scenario:defuse_tnt/name_display_code
tag @e[tag=display_dab_code,type=area_effect_cloud] remove display_dab_code
summon area_effect_cloud 25990 77 4 {Duration:1,Tags:["display_dab_code","dab_guess_3"]}
execute as @e[type=area_effect_cloud,tag=display_dab_code] at @s run function scenario:defuse_tnt/name_display_code
tellraw @a[tag=playing,team=dab,gamemode=adventure] [{"text":"-----------------\n","color":"dark_gray"},{"text":"- Your guess was: ","color":"gray"},{"selector":"@e[type=area_effect_cloud,tag=dab_guess_1]"},{"selector":"@e[type=area_effect_cloud,tag=dab_guess_2]"},{"selector":"@e[type=area_effect_cloud,tag=dab_guess_3]"}]


scoreboard players set $mod random 6
function random:random
kill @e[type=area_effect_cloud,tag=dab_particle_1]
kill @e[type=area_effect_cloud,tag=dab_particle_2]
kill @e[type=area_effect_cloud,tag=dab_particle_3]
execute if score $rand random matches 0..1 run summon area_effect_cloud 25989 78.5 5.5 {Duration:10000,Tags:["dab_particle_1","dab_pos_1"]}
execute if score $rand random matches 2..3 run summon area_effect_cloud 25989 79.5 5.5 {Duration:10000,Tags:["dab_particle_1","dab_pos_2"]}
execute if score $rand random matches 4..5 run summon area_effect_cloud 25989 79.0 5.5 {Duration:10000,Tags:["dab_particle_1","dab_pos_3"]}


execute if score $rand random matches 0 run summon area_effect_cloud 25989 79.0 5.5 {Duration:10000,Tags:["dab_particle_2","dab_pos_3"]}
execute if score $rand random matches 1 run summon area_effect_cloud 25989 79.5 5.5 {Duration:10000,Tags:["dab_particle_2","dab_pos_2"]}
execute if score $rand random matches 2 run summon area_effect_cloud 25989 79.0 5.5 {Duration:10000,Tags:["dab_particle_2","dab_pos_3"]}
execute if score $rand random matches 3 run summon area_effect_cloud 25989 78.5 5.5 {Duration:10000,Tags:["dab_particle_2","dab_pos_1"]}
execute if score $rand random matches 4 run summon area_effect_cloud 25989 79.5 5.5 {Duration:10000,Tags:["dab_particle_2","dab_pos_2"]}
execute if score $rand random matches 5 run summon area_effect_cloud 25989 78.5 5.5 {Duration:10000,Tags:["dab_particle_2","dab_pos_1"]}


execute if score $rand random matches 0 run summon area_effect_cloud 25989 79.5 5.5 {Duration:10000,Tags:["dab_particle_3","dab_pos_2"]}
execute if score $rand random matches 1 run summon area_effect_cloud 25989 79.0 5.5 {Duration:10000,Tags:["dab_particle_3","dab_pos_3"]}
execute if score $rand random matches 2 run summon area_effect_cloud 25989 78.5 5.5 {Duration:10000,Tags:["dab_particle_3","dab_pos_1"]}
execute if score $rand random matches 3 run summon area_effect_cloud 25989 79.0 5.5 {Duration:10000,Tags:["dab_particle_3","dab_pos_3"]}
execute if score $rand random matches 4 run summon area_effect_cloud 25989 78.5 5.5 {Duration:10000,Tags:["dab_particle_3","dab_pos_1"]}
execute if score $rand random matches 5 run summon area_effect_cloud 25989 79.5 5.5 {Duration:10000,Tags:["dab_particle_3","dab_pos_2"]}

execute if blocks 25968 66 4 25968 66 6 25990 77 4 all run function scenario:defuse_tnt/success
execute unless blocks 25968 66 4 25968 66 6 25990 77 4 all run function scenario:defuse_tnt/wrong

execute positioned 25990 77 6 if block ~ ~ ~ red_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 0
execute positioned 25990 77 6 if block ~ ~ ~ orange_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 1
execute positioned 25990 77 6 if block ~ ~ ~ yellow_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 2
execute positioned 25990 77 6 if block ~ ~ ~ lime_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 3
execute positioned 25990 77 6 if block ~ ~ ~ light_blue_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 4
execute positioned 25990 77 6 if block ~ ~ ~ purple_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 5
execute positioned 25990 77 6 if block ~ ~ ~ blue_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 6
execute positioned 25990 77 6 if block ~ ~ ~ pink_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 7
execute positioned 25990 77 6 if block ~ ~ ~ brown_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 8

execute positioned 25990 77 5 if block ~ ~ ~ red_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 0
execute positioned 25990 77 5 if block ~ ~ ~ orange_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 1
execute positioned 25990 77 5 if block ~ ~ ~ yellow_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 2
execute positioned 25990 77 5 if block ~ ~ ~ lime_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 3
execute positioned 25990 77 5 if block ~ ~ ~ light_blue_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 4
execute positioned 25990 77 5 if block ~ ~ ~ purple_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 5
execute positioned 25990 77 5 if block ~ ~ ~ blue_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 6
execute positioned 25990 77 5 if block ~ ~ ~ pink_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 7
execute positioned 25990 77 5 if block ~ ~ ~ brown_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 8

execute positioned 25990 77 4 if block ~ ~ ~ red_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 0
execute positioned 25990 77 4 if block ~ ~ ~ orange_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 1
execute positioned 25990 77 4 if block ~ ~ ~ yellow_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 2
execute positioned 25990 77 4 if block ~ ~ ~ lime_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 3
execute positioned 25990 77 4 if block ~ ~ ~ light_blue_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 4
execute positioned 25990 77 4 if block ~ ~ ~ purple_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 5
execute positioned 25990 77 4 if block ~ ~ ~ blue_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 6
execute positioned 25990 77 4 if block ~ ~ ~ pink_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 7
execute positioned 25990 77 4 if block ~ ~ ~ brown_concrete run scoreboard players set @e[tag=dab_code_s,sort=nearest,limit=1,distance=..1] dab_sand 8



scoreboard players set $time dab_animation 1

fill 25990 77 6 25990 77 4 air

scoreboard players remove $attempt dab_number 1

execute if score $attempt dab_number matches 8 run clone 26011 66 -17 26018 79 -17 25978 74 -7
execute if score $attempt dab_number matches 7 run clone 26011 66 -16 26018 79 -16 25978 74 -7
execute if score $attempt dab_number matches 6 run clone 26011 66 -15 26018 79 -15 25978 74 -7
execute if score $attempt dab_number matches 5 run clone 26011 66 -14 26018 79 -14 25978 74 -7
execute if score $attempt dab_number matches 4 run clone 26011 66 -13 26018 79 -13 25978 74 -7
execute if score $attempt dab_number matches 3 run clone 26011 66 -12 26018 79 -12 25978 74 -7
execute if score $attempt dab_number matches 2 run clone 26011 66 -11 26018 79 -11 25978 74 -7
execute if score $attempt dab_number matches 1 run clone 26011 66 -10 26018 79 -10 25978 74 -7
execute if score $attempt dab_number matches 0 run fill 25974 89 -7 25989 72 -7 air

execute if score $attempt dab_number matches 0 if score $number dab_result matches -1 run scoreboard players set $number dab_result 0