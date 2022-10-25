tag @a[team=rab_old,tag=playing] add in_tutorial
gamemode spectator @a[team=rab_old]
title @a[team=rab_old] times 5 40 5
scoreboard players set @a[team=rab_old] tutorial 0
kill @e[type=armor_stand,tag=rab_old_tutorial]
summon armor_stand 15970 72 0 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["rab_old_tutorial","tutorial_marker"],Rotation:[90f,0f]}
function scenario:steal_a_gem_old/tutorial