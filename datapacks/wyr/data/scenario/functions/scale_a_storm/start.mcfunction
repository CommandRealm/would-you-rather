scoreboard players set $time sas_timer 1800
scoreboard players set $sas active_scenario 1
scoreboard players set @a[tag=playing,team=sas,gamemode=adventure] death 0
function scenario:scale_a_storm/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue sas_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow sas_seconds