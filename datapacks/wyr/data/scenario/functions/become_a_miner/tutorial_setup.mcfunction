tag @a[team=bam,tag=playing] add in_tutorial
gamemode spectator @a[team=bam]
title @a[team=bam] times 5 40 5
scoreboard players set @a[team=bam] tutorial 0
kill @e[type=armor_stand,tag=bam_tutorial]
summon armor_stand 8847 136 -18 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,Tags:["bam_tutorial","tutorial_marker"],Rotation:[88f,-5f]}
function scenario:become_a_miner/tutorial