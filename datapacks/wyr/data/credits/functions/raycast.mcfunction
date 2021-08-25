execute positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=show_details,distance=..0.55] run function credits:show_text
execute positioned ~ ~ ~ if entity @e[type=armor_stand,tag=show_details,distance=..0.55] run function credits:show_text
execute if entity @s[distance=..5] unless entity @e[type=armor_stand,tag=show_details,distance=..1] positioned ^ ^ ^0.5 run function credits:raycast