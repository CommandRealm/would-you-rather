scoreboard players set $saga active_scenario 0

gamemode spectator @a[team=saga]
tp @e[tag=saga_die,x=4000,y=66,z=0,distance=..300] 0 2 0
kill @e[tag=saga_die]
scoreboard players set $time saga_timer -1
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow
schedule function scenario:check_active_scenarios 40t