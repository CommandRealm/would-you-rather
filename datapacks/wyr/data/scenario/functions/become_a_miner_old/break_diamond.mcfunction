particle item diamond ~ ~ ~ 0.25 0.25 0.25 0.25 50
scoreboard players set $mod random 10
function random:random
execute if score $rand random matches 0..3 run scoreboard players add @p[scores={bam_old_break_d=1..},tag=playing,team=bam_old] bam_old_diamond 1
execute if score $rand random matches 4..5 run scoreboard players add @p[scores={bam_old_break_d=1..},tag=playing,team=bam_old] bam_old_diamond 2
execute if score $rand random matches 6..7 run scoreboard players add @p[scores={bam_old_break_d=1..},tag=playing,team=bam_old] bam_old_diamond 3
execute if score $rand random matches 8..9 run scoreboard players add @p[scores={bam_old_break_d=1..},tag=playing,team=bam_old] bam_old_diamond 4
execute as @p[scores={bam_old_break_d=1..},tag=playing,team=bam_old] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 100000 1
scoreboard players reset @p[scores={bam_old_break_d=1..},tag=playing,team=bam_old] bam_old_break_d
scoreboard players remove $diamonds bam_old_bar 1
execute store result bossbar become_a_miner_old:diamonds value run scoreboard players get $diamonds bam_old_bar
tag @s remove bam_old_diamond