gamemode adventure @s[gamemode=!adventure]
tp @s -935 79 -155 0 -10
tag @s remove lobby
tag @s remove spectating
title @s times 0 25 5
function general:rank
effect clear @s
clear @s
scoreboard players set @s ready 0
scoreboard players set @s rc 0
scoreboard players reset @s stop_spectating
bossbar set lobby players @a[tag=!playing,tag=!playing_soon]

tellraw @s {"text":"Returned to lobby!","color":"gray"}
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000000 1.75

