gamemode spectator @s
execute if score @s cs_sheep = $sheep cs_sheep run title @s title [{"text":"Correct count!","color":"green"}]
execute if score @s cs_sheep = $sheep cs_sheep run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100000 0.529732
execute if score @s cs_sheep = $sheep cs_sheep run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100000 0.667420
execute if score @s cs_sheep = $sheep cs_sheep run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100000 0.793701
execute unless score @s cs_sheep = $sheep cs_sheep run title @s title [{"text":"Incorrect count.","color":"red"}]
execute unless score @s cs_sheep = $sheep cs_sheep run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100000 0.529732
execute unless score @s cs_sheep = $sheep cs_sheep run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100000 0.629961
execute unless score @s cs_sheep = $sheep cs_sheep run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100000 0.793701
title @s subtitle [{"text":" "}]
scoreboard players remove @s spectator 20