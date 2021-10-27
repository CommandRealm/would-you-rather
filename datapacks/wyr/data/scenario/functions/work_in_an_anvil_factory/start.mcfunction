scoreboard players set $time wiaaf_timer 700
scoreboard players set $wiaaf active_scenario 1
function scenario:work_in_an_anvil_factory/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue wiaaf_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Work in an anvil factory",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow wiaaf_seconds
title @a[team=wiaaf] times 0 20 5


advancement grant @a[team=wiaaf,tag=playing,gamemode=adventure] only advancements:scenario_anvil