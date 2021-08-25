execute unless entity @e[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..5] unless entity @e[type=area_effect_cloud,tag=delay_plush,distance=..5] run function lobby:machine/get_plush
execute if block ~ ~ ~ lever[facing=west] run setblock -917 79 -146 lever[face=wall,facing=west,powered=false] replace
execute if block ~ ~ ~ lever[facing=east] run setblock -953 79 -146 lever[face=wall,facing=east,powered=false] replace
playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1.15