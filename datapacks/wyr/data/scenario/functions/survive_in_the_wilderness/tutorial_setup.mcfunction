tag @a[team=sitw,tag=playing] add in_tutorial
gamemode spectator @a[team=sitw]
title @a[team=sitw] times 5 40 5
scoreboard players set @a[team=sitw] tutorial 0
kill @e[type=armor_stand,tag=sitw_tutorial]
summon armor_stand 997 72 -2 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["sitw_tutorial","tutorial_marker"],Rotation:[225.0f,30.0f]}
function scenario:survive_in_the_wilderness/tutorial
execute at @r[team=sitw] as @e[tag=sitw_stick,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
