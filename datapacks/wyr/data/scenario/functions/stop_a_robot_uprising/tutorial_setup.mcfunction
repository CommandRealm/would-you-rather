tag @a[team=saru,tag=playing] add in_tutorial
gamemode spectator @a[team=saru]
title @a[team=saru] times 5 40 5
scoreboard players set @a[team=saru] tutorial 0
kill @e[type=armor_stand,tag=saru_tutorial]
summon armor_stand 29048 74 19 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["saru_tutorial","tutorial_marker"],Rotation:[145f,40f]}
function scenario:stop_a_robot_uprising/tutorial