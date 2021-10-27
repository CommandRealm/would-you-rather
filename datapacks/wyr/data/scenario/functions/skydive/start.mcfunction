scoreboard players set $time skydive_timer 1000
scoreboard players set $skydive active_scenario 1
scoreboard players reset @a[tag=playing,team=skydive] death
function scenario:skydive/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue skydive_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go skydiving",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow skydive_seconds

effect give @a[team=skydive,gamemode=adventure,tag=playing] invisibility 100000 255 true

advancement grant @a[team=skydive,tag=playing,gamemode=adventure] only advancements:scenario_skydive