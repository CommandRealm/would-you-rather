# Check if treasure can be picked up
tag @s add temporary_tag
tag @s add temporary_tag2

execute as @e[type=area_effect_cloud,tag=used_treasure,distance=..30] at @s if score @s id = @p[tag=temporary_tag] id run tag @s add temporary_tag3
execute as @e[type=area_effect_cloud,tag=used_treasure,distance=..2] at @s if score @s id = @p[tag=temporary_tag] id run tag @p[tag=temporary_tag] remove temporary_tag
execute as @e[type=area_effect_cloud,tag=used_treasure,distance=..30] at @s if score @s id = @p[tag=temporary_tag2] id run tag @p[tag=temporary_tag2] remove temporary_tag2

execute if entity @s[tag=temporary_tag,scores={maze_treasure=..4}] at @e[type=item,tag=maze_treasure,distance=..2,sort=nearest] run function scenario:loot_a_labyrinth/treasure/give_treasure

execute unless entity @s[tag=temporary_tag2] at @e[type=area_effect_cloud,tag=used_treasure,distance=..30,scores={maze_treasure=60..},tag=temporary_tag3] run particle dust 1 0 0 1 ~ ~ ~ .5 1 .5 1 10 force @s

tag @s remove temporary_tag
tag @s remove temporary_tag2
tag @e[type=area_effect_cloud,tag=used_treasure] remove temporary_tag3