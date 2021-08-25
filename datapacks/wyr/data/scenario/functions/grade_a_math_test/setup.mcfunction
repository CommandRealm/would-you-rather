clear @a[team=gamt]
gamemode adventure @a[team=gamt]
effect give @a[team=gamt] invisibility 10000 255 true
execute if entity @a[team=gamt,tag=tutorial] run schedule function scenario:grade_a_math_test/tutorial_setup 40t
execute unless entity @a[team=gamt,tag=tutorial] run schedule function scenario:check_countdown 40t

title @a[tag=playing] times 5 53 2

scoreboard objectives add gamt_timer dummy

scoreboard objectives add gamt_right dummy

scoreboard objectives add gamt_wrong dummy

scoreboard objectives add gamt_random dummy

scoreboard objectives add gamt_number_1 dummy

scoreboard objectives add gamt_number_2 dummy

scoreboard objectives add gamt_result dummy

scoreboard objectives add gamt_false dummy

scoreboard objectives add gamt_operation dummy

scoreboard objectives add gamt_change dummy

scoreboard objectives add gamt_add dummy

scoreboard objectives add gamt_remove dummy

scoreboard objectives remove gamt_tally_c
scoreboard objectives remove gamt_tally_i
scoreboard objectives add gamt_tally_c dummy
scoreboard objectives add gamt_tally_i dummy
scoreboard players add @a[team=gamt,tag=playing] gamt_tally_c 0
scoreboard players add @a[team=gamt,tag=playing] gamt_tally_i 0

scoreboard players set $mod gamt_random 15
scoreboard objectives add gamt_true minecraft.dropped:minecraft.lime_wool
scoreboard objectives add gamt_untrue minecraft.dropped:minecraft.red_wool


scoreboard players set @a gamt_true 0
scoreboard players set @a gamt_untrue 0
scoreboard objectives remove gamt_tally
scoreboard objectives add gamt_tally dummy {"text":"Tally","color":"gold"}


scoreboard objectives add gamt_answer dummy

effect give @a[team=gamt] weakness 1000000 255 true

fill 1977 69 -4 1992 66 -4 minecraft:birch_trapdoor[facing=south,open=false,half=top] replace minecraft:birch_trapdoor
fill 1975 69 -1 1975 69 4 birch_trapdoor[facing=east,open=false,half=top] replace minecraft:birch_trapdoor
fill 1993 68 -3 1993 67 6 birch_trapdoor[facing=west,open=false,half=top] replace birch_trapdoor

fill 1970 71 -4 1992 72 7 oak_fence_gate[facing=south,open=false,powered=true] replace minecraft:oak_fence_gate

fill 1990 66 -2 1981 66 6 spruce_fence_gate[facing=west,open=true] replace spruce_fence_gate

fill 1975 67 3 1975 67 0 minecraft:dark_oak_trapdoor[open=false,facing=east] replace minecraft:dark_oak_trapdoor
fill 1975 68 3 1975 68 0 minecraft:dark_oak_trapdoor[open=false,facing=east,half=top] replace minecraft:dark_oak_trapdoor
fill 1975 67 4 1975 68 4 minecraft:dark_oak_trapdoor[open=true,half=top,facing=south] replace minecraft:dark_oak_trapdoor
fill 1975 67 -1 1975 68 -1 minecraft:dark_oak_trapdoor[open=true,half=top,facing=north] replace minecraft:dark_oak_trapdoor

setblock 1993 67 -1 minecraft:potted_blue_orchid
setblock 1982 68 -4 minecraft:potted_lily_of_the_valley
fill 1984 68 -4 1986 68 -4 minecraft:flower_pot
setblock 1993 69 -1 minecraft:sunflower
kill @e[type=item,x=2000,y=66,z=0,distance=..200]

execute as @a[team=gamt] at @s as @e[type=painting,distance=..200] run data merge entity @s {Invulnerable:1}

setblock 1979 70 -4 minecraft:comparator[mode=subtract,facing=east,powered=true]

execute as @a[team=gamt] at @s as @e[type=item_frame,distance=..100] at @s run data merge entity @s {ItemRotation:0,Invulnerable:1,Fixed:1b}