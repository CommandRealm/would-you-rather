execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 10000 0
tellraw @a[tag=playing] [{"text":"Insufficient amount of players to complete the game.","color":"red"}]
function end:players