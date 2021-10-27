scoreboard players set $time npab_timer 1000
scoreboard players set $npab active_scenario 1
function scenario:not_push_a_button/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue npab_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Not push a button",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow npab_seconds

effect give @a[team=npab] resistance 1000000 255 true

advancement grant @a[team=npab,tag=playing,gamemode=adventure] only advancements:scenario_button