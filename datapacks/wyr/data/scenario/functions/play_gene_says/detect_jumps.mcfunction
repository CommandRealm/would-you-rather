scoreboard players add @a[tag=playing,team=pgs,tag=!pgs_completed_action,gamemode=adventure] pgs_jump 0
execute as @a[tag=playing,team=pgs,scores={pgs_jump=0},tag=!pgs_completed_action,gamemode=adventure] at @s run function scenario:play_gene_says/complete_action