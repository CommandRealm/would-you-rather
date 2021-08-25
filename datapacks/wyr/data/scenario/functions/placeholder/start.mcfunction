scoreboard players set $time placeholder_timer 1000
scoreboard players set $placeholder active_scenario 1
function scenario:placeholder/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Placeholder Scenario",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue placeholder_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Placeholder Scenario",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow placeholder_seconds