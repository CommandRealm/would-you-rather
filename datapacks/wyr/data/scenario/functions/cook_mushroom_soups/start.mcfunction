scoreboard players set $time cms_timer 2400
execute as @a[tag=playing,team=cms,gamemode=adventure] at @s run scoreboard players remove $time cms_timer 100
execute if score $time cms_timer matches ..1400 run scoreboard players set $time cms_timer 1400
scoreboard players set $cms active_scenario 1
scoreboard players set $number cms_soups_left 3
scoreboard players set $order cms_timer 0
scoreboard players set Customers: cms_seconds 3
team join blue Customers:
function scenario:cook_mushroom_soups/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue cms_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Cook mushroom soups",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow cms_seconds

effect give @a[tag=playing,team=cms] water_breathing 10000 255 true
title @a[tag=playing,team=cms] times 0 25 5

effect give @a[tag=playing,team=cms] resistance 10000 255 true