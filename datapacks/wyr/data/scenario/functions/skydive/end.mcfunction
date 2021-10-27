#kills:
tp @e[tag=skydive_die] 0 0 0
kill @e[tag=skydive_die]

scoreboard players set $skydive active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow