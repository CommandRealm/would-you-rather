
execute if entity @s[tag=eadl_has_1,tag=eadl_has_2,tag=!eadl_has_3] run scoreboard players set @s eadl_3 1
execute if entity @s[tag=eadl_has_1,tag=eadl_has_2,tag=!eadl_has_3] run tag @s add eadl_has_3

execute if entity @s[tag=eadl_has_1,tag=!eadl_has_2] run scoreboard players set @s eadl_2 1
execute if entity @s[tag=eadl_has_1,tag=!eadl_has_2] run tag @s add eadl_has_2

execute if entity @s[tag=!eadl_has_1] run scoreboard players set @s eadl_1 1
execute if entity @s[tag=!eadl_has_1] run tag @s add eadl_has_1
playsound minecraft:item.armor.equip_generic master @s
scoreboard players set @s eadl_set_beep 10000
function scenario:explore_a_deserted_lab/beep