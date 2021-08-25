clear @s player_head
kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..15]
execute if entity @s[scores={ft_thief=1}] run function scenario:find_thieves/get_thief_1_head
execute if entity @s[scores={ft_thief=2}] run function scenario:find_thieves/get_thief_2_head
execute if entity @s[scores={ft_thief=3}] run function scenario:find_thieves/get_thief_3_head