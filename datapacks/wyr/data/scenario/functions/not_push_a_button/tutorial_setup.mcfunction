tag @a[team=npab,tag=playing] add in_tutorial
gamemode spectator @a[team=npab]
title @a[team=npab] times 5 40 5
scoreboard players set @a[team=npab] tutorial 0
kill @e[type=armor_stand,tag=npab_tutorial]
summon armor_stand 6000 70 5 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["npab_tutorial","tutorial_marker"],Rotation:[180f,25f]}
function scenario:not_push_a_button/tutorial