tag @a[team=pgs,tag=playing] add in_tutorial
gamemode spectator @a[team=pgs]
title @a[team=pgs] times 5 40 5
scoreboard players set @a[team=pgs] tutorial 0
kill @e[type=armor_stand,tag=pgs_tutorial]
summon armor_stand 27033 68 -18 {NoBasePlate:1b,Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["pgs_tutorial","tutorial_marker"],Rotation:[0f,20f]}
function scenario:play_gene_says/tutorial