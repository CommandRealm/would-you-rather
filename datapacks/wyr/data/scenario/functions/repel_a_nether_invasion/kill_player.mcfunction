# called when we kill a cube
scoreboard players reset @s rani_player
scoreboard players remove @s rani_kills_left 1

playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 0
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 0