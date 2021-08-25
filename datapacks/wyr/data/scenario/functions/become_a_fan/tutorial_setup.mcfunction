tag @a[team=bafe,tag=playing] add in_tutorial
gamemode spectator @a[team=bafe]
title @a[team=bafe] times 5 40 5
scoreboard players set @a[team=bafe] tutorial 0
kill @e[type=armor_stand,tag=bafe_tutorial]
summon armor_stand 12008 69 -5 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["bafe_tutorial","tutorial_marker"],Rotation:[45f,68f]}
function scenario:become_a_fan/tutorial