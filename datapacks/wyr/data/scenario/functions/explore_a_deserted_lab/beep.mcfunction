playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.5 0
tag @e[type=area_effect_cloud,tag=eadl_item_spawn] add eadl_closest
execute if entity @s[scores={eadl_1=1}] run tag @e[type=area_effect_cloud,tag=eadl_repeater] remove eadl_closest
execute if entity @s[scores={eadl_2=1}] run tag @e[type=area_effect_cloud,tag=eadl_repeater] remove eadl_closest
execute if entity @s[scores={eadl_3=1}] run tag @e[type=area_effect_cloud,tag=eadl_repeater] remove eadl_closest
execute if entity @s[scores={eadl_1=2}] run tag @e[type=area_effect_cloud,tag=eadl_torch] remove eadl_closest
execute if entity @s[scores={eadl_2=2}] run tag @e[type=area_effect_cloud,tag=eadl_torch] remove eadl_closest
execute if entity @s[scores={eadl_3=2}] run tag @e[type=area_effect_cloud,tag=eadl_torch] remove eadl_closest
execute if entity @s[scores={eadl_1=3}] run tag @e[type=area_effect_cloud,tag=eadl_dust] remove eadl_closest
execute if entity @s[scores={eadl_2=3}] run tag @e[type=area_effect_cloud,tag=eadl_dust] remove eadl_closest
execute if entity @s[scores={eadl_3=3}] run tag @e[type=area_effect_cloud,tag=eadl_dust] remove eadl_closest

execute if entity @e[type=area_effect_cloud,tag=eadl_closest] at @e[type=area_effect_cloud,tag=eadl_closest,sort=nearest,limit=1] run function scenario:explore_a_deserted_lab/evaluate_beep
scoreboard players operation @s eadl_beep = @s eadl_set_beep