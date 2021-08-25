#kills:
tp @e[tag=sas_die] 0 0 0
kill @e[tag=sas_die]

scoreboard players set $sas active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow