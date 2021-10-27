tag @a[team=rani,tag=playing] add in_tutorial
gamemode spectator @a[team=rani]
title @a[team=rani] times 5 40 5
scoreboard players set @a[team=rani] tutorial 0
kill @e[type=armor_stand,tag=rani_tutorial]
summon armor_stand 9966 69 -27 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["rani_tutorial","tutorial_marker"],Rotation:[-55f,5f]}
function scenario:repel_a_nether_invasion/tutorial