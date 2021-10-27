# called when an undead player died
title @s title [{"text":" "}]
title @s subtitle [{"text":"You are ","color":"gray"},{"text":"DEAD","bold":true,"color":"dark_red","underlined": true}]

effect give @s weakness 3 255 true
scoreboard players set @s rani_d_cool 60
clear @s
effect clear @s
team join rani_dead
tellraw @s [{"text":"☠","color":"dark_red"},{"text":" You will respawn shortly.","color":"gray"}]