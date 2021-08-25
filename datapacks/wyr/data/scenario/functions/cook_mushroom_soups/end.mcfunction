#kills:
tp @e[tag=cms_die] 0 0 0
kill @e[tag=cms_die]

scoreboard players set $cms active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow