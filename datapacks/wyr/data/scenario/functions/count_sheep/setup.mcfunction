clear @a[team=cs]
gamemode adventure @a[team=cs,gamemode=!adventure,tag=playing]

#kills:
tp @e[tag=cs_die] 0 0 0
kill @e[tag=cs_die]


##if scenario needs timer:
scoreboard objectives add cs_timer dummy
scoreboard objectives remove cs_seconds
scoreboard objectives add cs_seconds dummy {"text":"Time Remaining","color":"gray","bold":true}

scoreboard objectives remove cs_sheep
scoreboard objectives add cs_sheep dummy
scoreboard players add @a[tag=playing,team=cs] cs_sheep 0
scoreboard players set $sheep cs_sheep 35
scoreboard players set $mod random 15
function random:random
scoreboard players add $rand random 1
scoreboard players operation $sheep cs_sheep -= $rand random

scoreboard objectives remove cs_drop_counter
scoreboard objectives add cs_drop_counter minecraft.dropped:minecraft.lime_bed

scoreboard objectives remove cs_drop_subtract
scoreboard objectives add cs_drop_subtract minecraft.dropped:minecraft.red_bed

scoreboard objectives remove cs_drop_lock
scoreboard objectives add cs_drop_lock minecraft.dropped:minecraft.iron_bars

scoreboard objectives remove cs_delay
scoreboard objectives add cs_delay dummy

execute as @e[type=painting,x=36000,y=66,z=0,distance=..1000] at @s run data merge entity @s {Invulnerable:1b}
execute if entity @a[team=cs,tag=tutorial] run schedule function scenario:count_sheep/tutorial_setup 40t
execute unless entity @a[team=cs,tag=tutorial] run schedule function scenario:check_countdown 40t




##Trapdoors
fill 36001 67 6 36001 68 6 minecraft:spruce_trapdoor[half=bottom,facing=west,open=true]
fill 36005 67 6 36005 68 6 minecraft:spruce_trapdoor[half=bottom,facing=east,open=true]
fill 36004 69 6 36002 69 6 minecraft:spruce_trapdoor[half=bottom,open=false,facing=east]