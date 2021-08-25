scoreboard players set $time ptasv_timer 1800
scoreboard players set $ptasv active_scenario 1
scoreboard players set @a[tag=playing,team=ptasv,gamemode=adventure] death 0
function scenario:parkour_through_a_sky_village/active

execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue ptasv_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Parkour through a sky village",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow ptasv_seconds
scoreboard players add @a[tag=playing,team=ptasv,gamemode=adventure] ptasv_duration 0

effect give @a[tag=playing,team=ptasv,gamemode=adventure] invisibility 100000 255 true