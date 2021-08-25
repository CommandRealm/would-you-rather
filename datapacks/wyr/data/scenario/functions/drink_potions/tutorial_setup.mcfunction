tag @a[team=ddp,tag=playing] add in_tutorial
gamemode spectator @a[team=ddp]
title @a[team=ddp] times 5 40 5
scoreboard players set @a[team=ddp] tutorial 0
kill @e[type=armor_stand,tag=ddp_tutorial]
summon armor_stand 29990 70 0 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["ddp_tutorial","tutorial_marker"],Rotation:[90f,10f]}
function scenario:drink_potions/tutorial