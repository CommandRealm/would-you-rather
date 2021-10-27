tag @a[team=skydive,tag=playing] add in_tutorial
gamemode spectator @a[team=skydive]
title @a[team=skydive] times 5 40 5
scoreboard players set @a[team=skydive] tutorial 0
kill @e[type=armor_stand,tag=skydive_tutorial]
summon armor_stand 20061 124 9 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["skydive_tutorial","tutorial_marker"],Rotation:[190f,60f]}
function scenario:skydive/tutorial