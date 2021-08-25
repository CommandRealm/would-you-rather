tag @a[team=sas,tag=playing] add in_tutorial
gamemode spectator @a[team=sas]
title @a[team=sas] times 5 40 5
scoreboard players set @a[team=sas] tutorial 0
kill @e[type=armor_stand,tag=sas_tutorial]
summon armor_stand 2992 14 12 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["sas_tutorial","tutorial_marker"],Rotation:[-145f,-40f]}
function scenario:scale_a_storm/tutorial