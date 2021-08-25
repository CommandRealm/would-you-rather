#kills:
tp @e[tag=placeholder_die] 0 0 0
kill @e[tag=placeholder_die]

scoreboard players set $placeholder active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Placeholder Scenario",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Placeholder Scenario",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow