#kills:
tp @e[tag=giant_die] 0 0 0
kill @e[tag=giant_die]

scoreboard players set $giant active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow