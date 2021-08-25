tag @a[team=hcm,tag=playing] add in_tutorial
gamemode spectator @a[team=hcm]
title @a[team=hcm] times 5 40 5
scoreboard players set @a[team=hcm] tutorial 0
kill @e[type=armor_stand,tag=hcm_tutorial]
summon armor_stand 19002 75 15 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["hcm_tutorial","tutorial_marker"],Rotation:[0f,10f]}
function scenario:hunt_cave_monsters/tutorial