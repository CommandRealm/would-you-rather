tag @a[team=rab,tag=playing] add in_tutorial
gamemode spectator @a[team=rab]
title @a[team=rab] times 5 40 5
scoreboard players set @a[team=rab] tutorial 0
kill @e[type=armor_stand,tag=rab_tutorial]

summon armor_stand 15970 72 -381 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["rab_tutorial","tutorial_marker"],Rotation:[90f,20f]}
function scenario:steal_a_gem/tutorial