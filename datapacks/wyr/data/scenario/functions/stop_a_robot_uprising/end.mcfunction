#kills:
tp @e[tag=saru_die] 0 0 0
kill @e[tag=saru_die]

scoreboard players set $saru active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Stop a robot uprising",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow