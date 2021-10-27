#kills:
tp @e[tag=rani_die] 0 0 0
kill @e[tag=rani_die]

gamemode spectator @a[team=rani_dead]

scoreboard players set $rani active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Repel a nether invasion",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow