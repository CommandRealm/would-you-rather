tag @a[team=pd,tag=playing] add in_tutorial
gamemode spectator @a[team=pd]
title @a[team=pd] times 5 40 5
scoreboard players set @a[team=pd] tutorial 0
kill @e[type=armor_stand,tag=pd_tutorial]
summon armor_stand 20997 76 17 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["pd_tutorial","tutorial_marker"],Rotation:[90f,10f]}
function scenario:play_dodgeball/tutorial