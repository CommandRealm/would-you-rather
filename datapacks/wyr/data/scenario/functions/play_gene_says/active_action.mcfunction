scoreboard players remove $action_time pgs_timer 1


execute if score $action_time pgs_timer matches 140 run function scenario:play_gene_says/add_objectives


execute if score $action_time pgs_timer matches 60 run title @a[tag=playing,team=pgs,tag=!pgs_completed_action] title [{"text":"Hurry!","color":"red"}]
execute if score $action_time pgs_timer matches 60 run title @a[tag=playing,team=pgs,tag=!pgs_completed_action] subtitle [{"text":" "}]
execute if score $action_time pgs_timer matches 60 as @a[tag=playing,team=pgs,tag=!pgs_completed_action] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1.5


execute if entity @e[type=area_effect_cloud,tag=pgs_action,tag=!pgs_has_location] run title @a[tag=playing,team=pgs,gamemode=adventure] actionbar [{"text":"Action: ","color":"dark_aqua"},{"selector":"@e[type=area_effect_cloud,tag=pgs_action]"}]
execute if entity @e[type=area_effect_cloud,tag=pgs_action,tag=pgs_has_location] run title @a[tag=playing,team=pgs,gamemode=adventure] actionbar [{"text":"Action: ","color":"dark_aqua"},{"selector":"@e[type=area_effect_cloud,tag=pgs_action]"},{"text":" Location: ","color":"dark_aqua"},{"selector":"@e[type=area_effect_cloud,tag=pgs_location]"}]


execute store result bossbar minecraft:play_gene_says/time value run scoreboard players get $action_time pgs_timer


execute unless entity @a[tag=playing,team=pgs,gamemode=adventure,tag=!pgs_completed_action] if score $action_time pgs_timer matches 21.. run scoreboard players set $action_time pgs_timer 20

execute if score $action_time pgs_timer matches ..140 run function scenario:play_gene_says/detect_actions

execute if entity @e[type=area_effect_cloud,tag=pgs_sound_location] run scoreboard players remove $sound pgs_timer 1
execute if score $sound pgs_timer matches ..0 run function scenario:play_gene_says/play_flute

##

execute if score $action_time pgs_timer matches 0 run function scenario:play_gene_says/action_over

##