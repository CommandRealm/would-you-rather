#kills:
tp @e[tag=arb_die] 0 0 0
kill @e[tag=arb_die]

scoreboard players set $arb active_scenario 0
schedule function scenario:check_active_scenarios 40t
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Avoid radioactive bats",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow