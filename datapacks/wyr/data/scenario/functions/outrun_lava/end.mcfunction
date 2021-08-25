#kills:
tp @e[tag=ol_die] 0 0 0
kill @e[tag=ol_die]

scoreboard players set $ol active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Outrun lava",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow