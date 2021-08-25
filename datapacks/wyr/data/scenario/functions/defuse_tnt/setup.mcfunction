clear @a[team=dab]
gamemode adventure @a[team=dab]
execute if entity @a[team=dab,tag=tutorial] run schedule function scenario:defuse_tnt/tutorial_setup 40t
execute unless entity @a[team=dab,tag=tutorial] run schedule function scenario:check_countdown 40t
scoreboard objectives add dab_random dummy
scoreboard players set $mod dab_random 9
scoreboard objectives add dab_timer dummy
scoreboard objectives add dab_second dummy
scoreboard players set $time dab_second 0

function scenario:defuse_tnt/random
execute if score $rand dab_random matches 0 run setblock 25968 66 6 red_concrete
execute if score $rand dab_random matches 1 run setblock 25968 66 6 orange_concrete
execute if score $rand dab_random matches 2 run setblock 25968 66 6 yellow_concrete
execute if score $rand dab_random matches 3 run setblock 25968 66 6 lime_concrete
execute if score $rand dab_random matches 4 run setblock 25968 66 6 light_blue_concrete
execute if score $rand dab_random matches 5 run setblock 25968 66 6 purple_concrete
execute if score $rand dab_random matches 6 run setblock 25968 66 6 blue_concrete
execute if score $rand dab_random matches 7 run setblock 25968 66 6 pink_concrete
execute if score $rand dab_random matches 8 run setblock 25968 66 6 brown_concrete
function scenario:defuse_tnt/random
execute if score $rand dab_random matches 0 run setblock 25968 66 5 red_concrete
execute if score $rand dab_random matches 1 run setblock 25968 66 5 orange_concrete
execute if score $rand dab_random matches 2 run setblock 25968 66 5 yellow_concrete
execute if score $rand dab_random matches 3 run setblock 25968 66 5 lime_concrete
execute if score $rand dab_random matches 4 run setblock 25968 66 5 light_blue_concrete
execute if score $rand dab_random matches 5 run setblock 25968 66 5 purple_concrete
execute if score $rand dab_random matches 6 run setblock 25968 66 5 blue_concrete
execute if score $rand dab_random matches 7 run setblock 25968 66 5 pink_concrete
execute if score $rand dab_random matches 8 run setblock 25968 66 5 brown_concrete
function scenario:defuse_tnt/random
execute if score $rand dab_random matches 0 run setblock 25968 66 4 red_concrete
execute if score $rand dab_random matches 1 run setblock 25968 66 4 orange_concrete
execute if score $rand dab_random matches 2 run setblock 25968 66 4 yellow_concrete
execute if score $rand dab_random matches 3 run setblock 25968 66 4 lime_concrete
execute if score $rand dab_random matches 4 run setblock 25968 66 4 light_blue_concrete
execute if score $rand dab_random matches 5 run setblock 25968 66 4 purple_concrete
execute if score $rand dab_random matches 6 run setblock 25968 66 4 blue_concrete
execute if score $rand dab_random matches 7 run setblock 25968 66 4 pink_concrete
execute if score $rand dab_random matches 8 run setblock 25968 66 4 brown_concrete
fill 25974 89 -7 25989 72 -7 air
fill 25990 77 6 25990 77 4 air
scoreboard objectives add dab_animation dummy
scoreboard players set $time dab_animation 0
scoreboard objectives add dab_state dummy
scoreboard players set $1 dab_state -1
scoreboard players set $2 dab_state -1
scoreboard players set $3 dab_state -1
scoreboard objectives add dab_sand dummy
kill @e[tag=die,x=26000,y=66,z=0,distance=..300]

fill 25982 72 9 25975 72 9 air

fill 25982 72 5 25975 72 5 air

fill 25982 72 1 25975 72 1 air

scoreboard objectives add dab_particle dummy

scoreboard objectives add dab_number dummy
scoreboard players set $attempt dab_number 7

clone 26011 66 -16 26018 79 -16 25978 74 -7


scoreboard objectives add dab_result dummy
scoreboard players set $number dab_result -1

kill @e[type=area_effect_cloud,tag=dab_particle,tag=die]

summon area_effect_cloud 25993 77.5 10 {Duration:100000,Tags:["infinite","die","dab_particle","dab_help1"]}
summon area_effect_cloud 25993 78.5 10 {Duration:100000,Tags:["infinite","die","dab_particle","dab_help2"]}
summon area_effect_cloud 25993 79.5 10 {Duration:100000,Tags:["infinite","die","dab_particle","dab_help3"]}
summon area_effect_cloud 25993 76.5 10 {Duration:100000,Tags:["infinite","die","dab_particle","dab_help4"]}

scoreboard players set @e[tag=dab_help1] dab_particle 0
scoreboard players set @e[tag=dab_help2] dab_particle 1
scoreboard players set @e[tag=dab_help3] dab_particle 2
scoreboard players set @e[tag=dab_help4] dab_particle 3



scoreboard objectives remove dab_seconds
scoreboard objectives add dab_seconds dummy {"text":"Time Remaining","color":"dark_gray","bold":true}
