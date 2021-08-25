scoreboard players add @a[tag=playing,team=pgs] pgs_run 0
scoreboard players add @a[tag=playing,team=pgs] pgs_walk 0
scoreboard players add @a[tag=playing,team=pgs] pgs_jump 0
scoreboard players add @a[tag=playing,team=pgs] pgs_crouch_d 0
execute as @a[tag=playing,tag=!pgs_completed_action,scores={pgs_run=0,pgs_walk=0,pgs_jump=0,pgs_crouch_d=0},gamemode=adventure,team=pgs] at @s run function scenario:play_gene_says/complete_action