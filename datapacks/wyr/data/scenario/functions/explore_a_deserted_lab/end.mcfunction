#kills:
tp @e[tag=eadl_die] 0 0 0
kill @e[tag=eadl_die]

scoreboard players set $eadl active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Explore a deserted lab",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow