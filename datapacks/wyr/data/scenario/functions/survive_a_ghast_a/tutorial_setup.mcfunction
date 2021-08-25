tag @a[team=saga,tag=playing] add in_tutorial
gamemode spectator @a[team=saga]
title @a[team=saga] times 5 40 5
scoreboard players set @a[team=saga] tutorial 0
kill @e[type=armor_stand,tag=saga_tutorial]
summon armor_stand 3981 95 -19 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["saga_tutorial","tutorial_marker"],Rotation:[0.0f,33.5f]}
function scenario:survive_a_ghast_a/tutorial
