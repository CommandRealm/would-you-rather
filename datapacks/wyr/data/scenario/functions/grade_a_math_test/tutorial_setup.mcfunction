tag @a[team=gamt,tag=playing] add in_tutorial
gamemode spectator @a[team=gamt]
title @a[team=gamt] times 5 40 5
scoreboard players set @a[team=gamt] tutorial 0
kill @e[type=armor_stand,tag=gamt_tutorial]
summon armor_stand 1976 70 -3 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["gamt_tutorial","tutorial_marker"],Rotation:[-60.0f,20.0f]}
function scenario:grade_a_math_test/tutorial
