tag @a[team=wat,tag=playing] add in_tutorial
gamemode spectator @a[team=wat]
title @a[team=wat] times 5 40 5
scoreboard players set @a[team=wat] tutorial 0
kill @e[type=armor_stand,tag=wat_tutorial]
summon armor_stand 6983 93 -1 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["wat_tutorial","tutorial_marker"],Rotation:[65f,20f]}
function scenario:walk_a_tightrope/tutorial