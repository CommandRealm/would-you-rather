scoreboard players set $time wat_timer 900
scoreboard players set $wat active_scenario 1
function scenario:walk_a_tightrope/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue wat_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Walk a tightrope",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow wat_seconds
effect give @a[team=wat] resistance 100000 255 true
effect give @a[team=wat] invisibility 100000 255 true