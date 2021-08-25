tag @a[team=cs,tag=playing] add in_tutorial
gamemode spectator @a[team=cs]
title @a[team=cs] times 5 40 5
scoreboard players set @a[team=cs] tutorial 0
kill @e[type=armor_stand,tag=cs_tutorial]
summon armor_stand 35996 67 5 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["cs_tutorial","tutorial_marker"],Rotation:[-135f,-40f]}
function scenario:count_sheep/tutorial