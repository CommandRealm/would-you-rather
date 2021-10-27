tag @a[team=giant,tag=playing] add in_tutorial
gamemode spectator @a[team=giant]
title @a[team=giant] times 5 40 5
scoreboard players set @a[team=giant] tutorial 0
kill @e[type=armor_stand,tag=giant_tutorial]
summon armor_stand 12999 88 -1 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["giant_tutorial","tutorial_marker"],Rotation:[0f,20f]}
function scenario:feed_a_giant/tutorial