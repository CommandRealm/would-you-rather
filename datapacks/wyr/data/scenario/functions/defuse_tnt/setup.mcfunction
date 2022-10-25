clear @a[team=dab]
gamemode adventure @a[team=dab,gamemode=!adventure,tag=playing]
execute if entity @a[team=dab,tag=tutorial] run schedule function scenario:defuse_tnt/tutorial_setup 40t
execute unless entity @a[team=dab,tag=tutorial] run schedule function scenario:check_countdown 40t
scoreboard objectives add dab_random dummy
scoreboard players set $mod dab_random 9
scoreboard objectives add dab_timer dummy
scoreboard objectives add dab_second dummy
scoreboard players set $time dab_second 0

# Create code
kill @e[type=item,tag=dab_concrete]
fill 25968 66 6 25968 66 4 air

summon item 25968 66 6 {Item:{id:"minecraft:red_concrete",Count:1b},Tags:["die","dab_concrete"]}
summon item 25968 66 6 {Item:{id:"minecraft:orange_concrete",Count:1b},Tags:["die","dab_concrete"]}
summon item 25968 66 6 {Item:{id:"minecraft:yellow_concrete",Count:1b},Tags:["die","dab_concrete"]}
summon item 25968 66 6 {Item:{id:"minecraft:lime_concrete",Count:1b},Tags:["die","dab_concrete"]}
summon item 25968 66 6 {Item:{id:"minecraft:light_blue_concrete",Count:1b},Tags:["die","dab_concrete"]}
summon item 25968 66 6 {Item:{id:"minecraft:purple_concrete",Count:1b},Tags:["die","dab_concrete"]}
summon item 25968 66 6 {Item:{id:"minecraft:blue_concrete",Count:1b},Tags:["die","dab_concrete"]}
summon item 25968 66 6 {Item:{id:"minecraft:brown_concrete",Count:1b},Tags:["die","dab_concrete"]}
summon item 25968 66 6 {Item:{id:"minecraft:pink_concrete",Count:1b},Tags:["die","dab_concrete"]}

summon minecraft:falling_block 25968 66 6 {Tags:["dab_concrete"],BlockState:{Name:"minecraft:red_concrete"}}
summon minecraft:falling_block 25968 66 5 {Tags:["dab_concrete"],BlockState:{Name:"minecraft:red_concrete"}}
summon minecraft:falling_block 25968 66 4 {Tags:["dab_concrete"],BlockState:{Name:"minecraft:red_concrete"}}

execute as @e[type=falling_block,tag=dab_concrete] at @s run function scenario:defuse_tnt/assign_color

kill @e[type=item,tag=dab_concrete]

fill 25974 89 -7 25989 72 -7 air
fill 25990 77 6 25990 77 4 air
scoreboard objectives add dab_animation dummy
scoreboard players set $time dab_animation 0
scoreboard objectives add dab_state dummy
scoreboard players set $1 dab_state -1
scoreboard players set $2 dab_state -1
scoreboard players set $3 dab_state -1
scoreboard objectives add dab_sand dummy
kill @e[tag=die,x=26970,y=66,z=0,distance=..300]

fill 25981 72 9 25975 72 9 air

fill 25981 72 5 25975 72 5 air

fill 25981 72 1 25975 72 1 air

scoreboard objectives add dab_particle dummy

scoreboard objectives add dab_number dummy
scoreboard players set $attempt dab_number 7

clone 26011 66 -16 26018 79 -16 25978 74 -7


scoreboard objectives add dab_result dummy
scoreboard players set $number dab_result -1

kill @e[type=area_effect_cloud,tag=dab_particle,tag=die]

summon area_effect_cloud 25992 77.5 10 {Duration:100000,Tags:["infinite","die","dab_particle","dab_help1"]}
summon area_effect_cloud 25992 78.5 10 {Duration:100000,Tags:["infinite","die","dab_particle","dab_help2"]}
summon area_effect_cloud 25992 79.5 10 {Duration:100000,Tags:["infinite","die","dab_particle","dab_help3"]}
#summon area_effect_cloud 25993 76.5 10 {Duration:100000,Tags:["infinite","die","dab_particle","dab_help4"]}

scoreboard players set @e[tag=dab_help1] dab_particle 0
scoreboard players set @e[tag=dab_help2] dab_particle 1
scoreboard players set @e[tag=dab_help3] dab_particle 2
scoreboard players set @e[tag=dab_help4] dab_particle 3



scoreboard objectives remove dab_seconds
scoreboard objectives add dab_seconds dummy {"text":"Time Remaining","color":"dark_gray","bold":true}
