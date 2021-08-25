scoreboard players set $mod random 5
function random:random
execute if score $rand random matches 0 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.5
execute if score $rand random matches 1 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.6
execute if score $rand random matches 2 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.7
execute if score $rand random matches 3 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.8
execute if score $rand random matches 4 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.9
playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 1 0.85
kill @s