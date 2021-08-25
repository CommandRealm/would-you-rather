tag @e[type=item,tag=ft_head_m,sort=random,limit=1] add selected_ft_head
execute as @e[type=minecraft:skeleton,tag=ft_get_equipment] at @s run data modify entity @s ArmorItems[3] set from entity @e[type=item,tag=selected_ft_head,limit=1] Item{}
tag @e[type=minecraft:skeleton,tag=ft_get_equipment] add ft_m
kill @e[tag=selected_ft_head,type=item]