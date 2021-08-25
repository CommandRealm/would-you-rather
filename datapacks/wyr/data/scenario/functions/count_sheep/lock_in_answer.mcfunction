playsound minecraft:block.iron_trapdoor.close master @s ~ ~ ~ 1000 0
playsound minecraft:block.iron_trapdoor.close master @s ~ ~ ~ 1000 1
playsound minecraft:block.iron_trapdoor.close master @s ~ ~ ~ 1000 2
tellraw @s [{"text":"Your answer of ","color":"gray"},{"score":{"objective":"cs_sheep","name":"@s"},"color":"white"},{"text":" has been locked in . . .","color":"gray"}]
tag @s add cs_locked_in
kill @e[type=item,nbt={Item:{id:"minecraft:iron_bars"}},distance=..15]
clear @s