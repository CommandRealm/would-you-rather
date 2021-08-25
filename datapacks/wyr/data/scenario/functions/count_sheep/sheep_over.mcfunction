scoreboard players set $launch cs_sheep -1
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue cs_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow cs_seconds
tellraw @a[tag=playing,team=cs] [{"text":"-=- ","color":"gray","bold":true},{"text":"All the sheep have been launched! Adjust your guess, then drop the iron bars or wait for time to run out to lock in your answer!","bold":false,"color":"white"}]
execute as @a[tag=playing,team=cs] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100000 0
##Make it go into final phase here.