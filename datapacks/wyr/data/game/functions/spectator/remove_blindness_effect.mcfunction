tag @s add remove_blindness_effect
execute store result score @s spec_x run data get entity @s Pos[0] 1000
execute store result score @s spec_y run data get entity @s Pos[1] 1000
execute store result score @s spec_z run data get entity @s Pos[2] 1000

execute store result score @s spec_rot run data get entity @s Rotation[0] 1000
execute store result score @s spec_rot_2 run data get entity @s Rotation[1] 1000
tp @s 0 150 0
summon area_effect_cloud 0 150 0 {Duration:1,Tags:["return_entity"]}
execute as @e[tag=return_entity,type=area_effect_cloud] at @s store result entity @s Pos[0] double 0.001 run scoreboard players get @a[tag=remove_blindness_effect,limit=1] spec_x
execute as @e[tag=return_entity,type=area_effect_cloud] at @s store result entity @s Pos[1] double 0.001 run scoreboard players get @a[tag=remove_blindness_effect,limit=1] spec_y
execute as @e[tag=return_entity,type=area_effect_cloud] at @s store result entity @s Pos[2] double 0.001 run scoreboard players get @a[tag=remove_blindness_effect,limit=1] spec_z

execute as @e[tag=return_entity,type=area_effect_cloud] at @s store result entity @s Rotation[0] float 0.001 run scoreboard players get @a[tag=remove_blindness_effect,limit=1] spec_rot
execute as @e[tag=return_entity,type=area_effect_cloud] at @s store result entity @s Rotation[1] float 0.001 run scoreboard players get @a[tag=remove_blindness_effect,limit=1] spec_rot_2
tp @s @e[type=area_effect_cloud,tag=return_entity,limit=1]
tag @a remove remove_blindness_effect
kill @e[type=area_effect_cloud,tag=return_entity]