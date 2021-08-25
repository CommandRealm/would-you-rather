tag @a[team=cms,tag=playing] add in_tutorial
gamemode spectator @a[team=cms]
title @a[team=cms] times 5 40 5
scoreboard players set @a[team=cms] tutorial 0
kill @e[type=armor_stand,tag=cms_tutorial]
summon armor_stand 39007 73 -8 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["cms_tutorial","tutorial_marker"],Rotation:[30f,30f]}
function scenario:cook_mushroom_soups/tutorial