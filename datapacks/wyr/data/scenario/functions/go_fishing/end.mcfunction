#kills:
tp @e[tag=gf_die] 0 0 0
kill @e[tag=gf_die]

scoreboard players set $gf active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow