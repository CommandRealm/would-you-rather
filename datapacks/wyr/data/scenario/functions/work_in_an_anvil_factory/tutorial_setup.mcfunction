tag @a[team=wiaaf,tag=playing] add in_tutorial
gamemode spectator @a[team=wiaaf]
title @a[team=wiaaf] times 5 40 5
scoreboard players set @a[team=wiaaf] tutorial 0
kill @e[type=armor_stand,tag=wiaaf_tutorial]
summon armor_stand 18008 65 -8 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["wiaaf_tutorial","tutorial_marker"],Rotation:[45f,-35f]}
function scenario:work_in_an_anvil_factory/tutorial