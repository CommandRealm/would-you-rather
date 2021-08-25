tag @a[team=dab,tag=playing] add in_tutorial
gamemode spectator @a[team=dab]
title @a[team=dab] times 5 40 5
fill 25990 77 4 25990 77 6 air
scoreboard players set @a[team=dab] tutorial 0
kill @e[type=armor_stand,tag=dab_tutorial]
summon armor_stand 25993 80 5 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["dab_tutorial","tutorial_marker"],Rotation:[90f,40f]}
function scenario:defuse_tnt/tutorial
clone 26011 66 -16 26018 79 -16 25978 74 -7