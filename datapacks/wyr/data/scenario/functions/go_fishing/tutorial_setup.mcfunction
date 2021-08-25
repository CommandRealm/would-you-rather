tag @a[team=gf,tag=playing] add in_tutorial
gamemode spectator @a[team=gf]
title @a[team=gf] times 5 40 5
scoreboard players set @a[team=gf] tutorial 0
kill @e[type=armor_stand,tag=gf_tutorial]
summon armor_stand 34998 70 -4 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["gf_tutorial","tutorial_marker"],Rotation:[-20f,10f]}
function scenario:go_fishing/tutorial