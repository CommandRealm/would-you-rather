tag @a[team=ptasv,tag=playing] add in_tutorial
gamemode spectator @a[team=ptasv]
title @a[team=ptasv] times 5 40 5
scoreboard players set @a[team=ptasv] tutorial 0
kill @e[type=armor_stand,tag=ptasv_tutorial]
summon armor_stand 37997 69 30 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["ptasv_tutorial","tutorial_marker"],Rotation:[-100f,5f]}
function scenario:parkour_through_a_sky_village/tutorial