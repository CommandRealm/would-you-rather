tag @a[team=ptp,tag=playing] add in_tutorial
gamemode spectator @a[team=ptp]
title @a[team=ptp] times 5 40 5
scoreboard players set @a[team=ptp] tutorial 0
kill @e[type=armor_stand,tag=ptp_tutorial]
summon armor_stand 33012 70 13 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["ptp_tutorial","tutorial_marker"],Rotation:[-135f,20f]}
function scenario:play_the_piano/tutorial