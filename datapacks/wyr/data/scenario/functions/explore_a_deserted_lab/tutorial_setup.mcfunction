tag @a[team=eadl,tag=playing] add in_tutorial
gamemode spectator @a[team=eadl]
title @a[team=eadl] times 5 40 5
scoreboard players set @a[team=eadl] tutorial 0
kill @e[type=armor_stand,tag=eadl_tutorial]
summon armor_stand 8006 71 -4 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["eadl_tutorial","tutorial_marker"],Rotation:[-32.5f,30f]}
function scenario:explore_a_deserted_lab/tutorial
setblock 8043 54 9 minecraft:wither_skeleton_skull[rotation=13]
summon item 8014 54 39 {Tags:["eadl_die"],Item:{id:"minecraft:repeater",Count:1b}}