tag @a[team=placeholder,tag=playing] add in_tutorial
gamemode spectator @a[team=placeholder]
title @a[team=placeholder] times 5 40 5
scoreboard players set @a[team=placeholder] tutorial 0
kill @e[type=armor_stand,tag=placeholder_tutorial]
summon armor_stand x y z {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["placeholder_tutorial","tutorial_marker"],Rotation:[0.0f,0.0f]}
function scenario:placeholder/tutorial