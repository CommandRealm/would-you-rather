tag @a[team=labyrinth,tag=playing] add in_tutorial
gamemode spectator @a[team=labyrinth]
title @a[team=labyrinth] times 5 40 5
scoreboard players set @a[team=labyrinth] tutorial 0
kill @e[type=armor_stand,tag=labyrinth_tutorial]
summon armor_stand 14074 5 14074 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["labyrinth_tutorial","tutorial_marker"],Rotation:[-45f,30f]}
function scenario:loot_a_labyrinth/tutorial

summon minecraft:item 14083 3 14079 {Item:{id:"minecraft:gold_block",Count:1b},Age:5400}