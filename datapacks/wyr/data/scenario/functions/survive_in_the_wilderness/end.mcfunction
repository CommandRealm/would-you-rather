tp @e[tag=sitw_die,x=1000,y=66,z=0,distance=..400] 0 2 0
kill @e[tag=sitw_die]
scoreboard players set $time sitw_timer -1
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow
scoreboard players set $sitw active_scenario 0
schedule function scenario:check_active_scenarios 40t
bossbar set survive_in_the_wilderness:campfire visible false