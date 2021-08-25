scoreboard players set $bafe active_scenario 0
gamemode spectator @a[tag=playing,team=bafe]
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Become a fan engineer",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow