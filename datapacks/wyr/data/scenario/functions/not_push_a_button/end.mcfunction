#kills:
tp @e[tag=npab_die] 0 0 0
kill @e[tag=npab_die]

scoreboard players set $npab active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow