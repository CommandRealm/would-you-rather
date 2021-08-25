#kills:
tp @e[tag=ptasv_die] 0 0 0
kill @e[tag=ptasv_die]

scoreboard players set $ptasv active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow