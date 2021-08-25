scoreboard players set $pd active_scenario 1
scoreboard players set $time pd_timer 600
function scenario:play_dodgeball/active
execute as @e[tag=pd_ai_on_start] at @s run data merge entity @s {NoAI:0b}
effect give @a[team=pd] weakness 10000 255 true
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue pd_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow pd_seconds