playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.25 2
scoreboard players add @s ft_thief 1
execute if entity @s[scores={ft_thief=1}] run title @s title [{"text":"WANTED: ","color":"red","bold":true},{"selector":"@e[type=area_effect_cloud,limit=1,tag=ft_thief_1_name]","color":"yellow"}]
execute if entity @s[scores={ft_thief=2}] run title @s title [{"text":"WANTED: ","color":"red","bold":true},{"selector":"@e[type=area_effect_cloud,limit=1,tag=ft_thief_2_name]","color":"yellow"}]
execute if entity @s[scores={ft_thief=3}] run title @s title [{"text":"WANTED: ","color":"red","bold":true},{"selector":"@e[type=area_effect_cloud,limit=1,tag=ft_thief_3_name]","color":"yellow"}]
title @s subtitle [{"text":"Find the thief and punch them!","color":"gold","italic":false}]