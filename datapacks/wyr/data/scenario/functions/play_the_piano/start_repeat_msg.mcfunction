tellraw @s [{"text":"Repeat the notes you saw by dropping the items in your inventory. You will have 15 seconds for each individual note.","color":"aqua"}]]

scoreboard players reset @s ptp_drop

clear @s

playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1000 0.7

scoreboard players set @s ptp_played 0