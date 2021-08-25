tag @a[team=ft,tag=playing] add in_tutorial
gamemode spectator @a[team=ft]
title @a[team=ft] times 5 40 5
scoreboard players set @a[team=ft] tutorial 0
kill @e[type=armor_stand,tag=ft_tutorial]
summon armor_stand 31979 82 -54 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["ft_tutorial","tutorial_marker"],Rotation:[-45f,30f]}
function scenario:find_thieves/tutorial