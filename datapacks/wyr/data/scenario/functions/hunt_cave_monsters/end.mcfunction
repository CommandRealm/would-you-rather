scoreboard players set $hcm active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Hunt cave monsters",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow
tp @e[tag=hcm_die] 0 0 0
kill @e[tag=hcm_die]