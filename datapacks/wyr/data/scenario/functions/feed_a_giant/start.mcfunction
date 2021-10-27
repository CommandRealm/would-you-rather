# scoreboard players set $time giant_timer 1000
scoreboard players set $giant active_scenario 1
function scenario:feed_a_giant/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue giant_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Feed a giant",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow giant_seconds

tellraw @a[tag=playing,team=giant] ["",{"text":"The ","color":"gray"},{"text":"GIANT","bold":true,"color":"dark_green"},{"text":" wants: ","color":"gray","bold":false},{"selector":"@e[type=item,tag=giant_food_option]"}]
execute as @a[tag=playing,team=giant] at @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 1 0
effect give @a[tag=playing,team=giant] resistance 10000 255 true