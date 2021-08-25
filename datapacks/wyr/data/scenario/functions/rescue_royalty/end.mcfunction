#kills:
tp @e[tag=rap_die] 0 0 0
kill @e[tag=rap_die]

scoreboard players set $rap active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow