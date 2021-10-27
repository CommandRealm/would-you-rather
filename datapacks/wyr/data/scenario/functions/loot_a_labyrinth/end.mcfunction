#kills:
tp @e[tag=labyrinth_die] 0 0 0
kill @e[tag=labyrinth_die]

setblock 14032 1 14032 dirt

scoreboard players set $labyrinth active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Loot a labyrinth",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow