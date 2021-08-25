##particle crit ~ ~ ~ 0 0 0 0 1
execute positioned ^ ^ ^.5 if entity @e[type=painting,dx=0] run function scenario:play_gene_says/complete_action
execute if block ~ ~ ~ air if entity @s[tag=!pgs_completed_action,distance=..5] positioned ^ ^ ^0.5 run function scenario:play_gene_says/raycast_artwork