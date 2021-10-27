# called when we kill a blaze
scoreboard players reset @s rani_blaze
scoreboard players remove @s rani_kills_left 1

playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 0
