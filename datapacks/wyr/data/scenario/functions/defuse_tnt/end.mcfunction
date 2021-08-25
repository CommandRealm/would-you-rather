tag @e[tag=display_dab_code,type=area_effect_cloud] remove display_dab_code
summon area_effect_cloud 25968 66 6 {Duration:1,Tags:["display_dab_code","dab_code_1"]}
execute as @e[type=area_effect_cloud,tag=display_dab_code] at @s run function scenario:defuse_tnt/name_display_code
tag @e[tag=display_dab_code,type=area_effect_cloud] remove display_dab_code
summon area_effect_cloud 25968 66 5 {Duration:1,Tags:["display_dab_code","dab_code_2"]}
execute as @e[type=area_effect_cloud,tag=display_dab_code] at @s run function scenario:defuse_tnt/name_display_code
tag @e[tag=display_dab_code,type=area_effect_cloud] remove display_dab_code
summon area_effect_cloud 25968 66 4 {Duration:1,Tags:["display_dab_code","dab_code_3"]}
execute as @e[type=area_effect_cloud,tag=display_dab_code] at @s run function scenario:defuse_tnt/name_display_code

tellraw @a[tag=playing,team=dab] [{"text":"The correct code was: ","color":"gray"},{"selector":"@e[type=area_effect_cloud,tag=dab_code_1,limit=1]"},{"selector":"@e[type=area_effect_cloud,tag=dab_code_2,limit=1]"},{"selector":"@e[type=area_effect_cloud,tag=dab_code_3,limit=1]"}]

scoreboard players set $time dab_timer -100
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Defuse TNT",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow
scoreboard players set $dab active_scenario 0
schedule function scenario:check_active_scenarios 40t