scoreboard players set $time gf_timer 1800
scoreboard players set $gf active_scenario 1
function scenario:go_fishing/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue gf_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Go fishing",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow gf_seconds
scoreboard players add @a[tag=playing,team=gf,gamemode=adventure] gf_points 0
kill @e[type=item,x=35000,y=66,z=0,distance=..500]
scoreboard players set @a[tag=playing,team=gf,gamemode=adventure] gf_item 0
clear @a[tag=playing,team=gf,gamemode=adventure]
effect give @a[tag=playing,team=gf,gamemode=adventure] resistance 100000 255 true