scoreboard players set $saga active_scenario 1
scoreboard players set $time saga_timer 600
function scenario:survive_a_ghast_a/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue saga_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive a ghast apocalypse",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow saga_seconds
effect give @a[team=saga] invisibility 100000 255 true

advancement grant @a[team=saga,tag=playing,gamemode=adventure] only advancements:scenario_ghast