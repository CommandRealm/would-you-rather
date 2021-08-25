tag @s add ft_punched_thief
scoreboard players set @s ft_timer -60

clear @s

execute if entity @s[scores={ft_thief=1}] as @e[type=skeleton,tag=ft_thief_1,sort=nearest,limit=1] at @s run function scenario:find_thieves/caught_thief
execute if entity @s[scores={ft_thief=2}] as @e[type=skeleton,tag=ft_thief_2,sort=nearest,limit=1] at @s run function scenario:find_thieves/caught_thief
execute if entity @s[scores={ft_thief=3}] as @e[type=skeleton,tag=ft_thief_3,sort=nearest,limit=1] at @s run function scenario:find_thieves/caught_thief


title @s title [{"text":"Thief caught!","color":"red"}]
execute if entity @s[scores={ft_thief=1}] run title @s subtitle [{"text":"Two remain.","color":"gold"}]
execute if entity @s[scores={ft_thief=2}] run title @s subtitle [{"text":"One remains.","color":"gold"}]
execute if entity @s[scores={ft_thief=3}] run title @s subtitle [{"text":"Well done!","color":"gold"}]
execute if entity @s[scores={ft_thief=3}] run function scenario:find_thieves/success