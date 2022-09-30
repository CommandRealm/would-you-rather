tag @a[team=bam_old,tag=playing] add in_tutorial
gamemode spectator @a[team=bam_old]
title @a[team=bam_old] times 5 40 5
scoreboard players set @a[team=bam_old] tutorial 0
kill @e[type=armor_stand,tag=bam_old_tutorial]
summon armor_stand 9018 81 -10 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["bam_old_tutorial","tutorial_marker"],Rotation:[65f,30f]}
function scenario:become_a_miner_old/tutorial