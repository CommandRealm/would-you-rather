scoreboard players set $time pgs_timer 0
title @a[tag=playing,team=pgs] times 0 20 5
scoreboard players set $pgs active_scenario 1
scoreboard players set $action_time pgs_timer 0
function scenario:play_gene_says/active
tag @a remove pgs_failed
tag @a remove pgs_succeeded
scoreboard players set $round pgs_timer 0
scoreboard players set $sound pgs_timer 0

advancement grant @a[team=pgs,tag=playing,gamemode=adventure] only advancements:scenario_says