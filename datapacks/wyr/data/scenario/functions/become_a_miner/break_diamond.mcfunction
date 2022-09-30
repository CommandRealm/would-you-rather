particle item diamond ~ ~ ~ 0.25 0.25 0.25 0.25 50
scoreboard players set $mod random 10
function random:random
execute if score $rand random matches 0..2 run scoreboard players add @p[scores={bam_break_d=1..},tag=playing,team=bam] bam_diamond 1
execute if score $rand random matches 3..4 run scoreboard players add @p[scores={bam_break_d=1..},tag=playing,team=bam] bam_diamond 2
execute if score $rand random matches 5..7 run scoreboard players add @p[scores={bam_break_d=1..},tag=playing,team=bam] bam_diamond 3
execute if score $rand random matches 8..9 run scoreboard players add @p[scores={bam_break_d=1..},tag=playing,team=bam] bam_diamond 4
execute if score $rand random matches 0..4 run tellraw @p[scores={bam_break_d=1..},tag=playing,team=bam] [{"text":"- ","color":"gray"},{"text":"Uh oh.","color":"red"}]
execute if score $rand random matches 5..9 run tellraw @p[scores={bam_break_d=1..},tag=playing,team=bam] [{"text":"- ","color":"gray"},{"text":"Great job!","color":"green"}]
execute as @p[scores={bam_break_d=1..},tag=playing,team=bam] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 100000 1
scoreboard players reset @p[scores={bam_break_d=1..},tag=playing,team=bam] bam_break_d
scoreboard players remove $diamonds bam_bar 1
execute store result bossbar become_a_miner:diamonds value run scoreboard players get $diamonds bam_bar
tag @s remove bam_diamond
