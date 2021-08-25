#kills:
tp @e[tag=wat_die] 0 0 0
kill @e[tag=wat_die]

scoreboard players set $wat active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow