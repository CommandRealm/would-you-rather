execute unless entity @e[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..5] unless entity @e[type=area_effect_cloud,tag=delay_gumball,distance=..5] run function lobby:machine/get_gumball
setblock -930 79 -149 crimson_button[facing=west]
playsound minecraft:block.barrel.open master @a ~ ~ ~ 1 2