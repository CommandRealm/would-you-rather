#called from pregame:main
#purpose is to countdown to the start of the game as long as players are ready.

scoreboard players add @a[scores={ready=1}] playing 0
scoreboard players reset @a[scores={ready=0}] playing

scoreboard players remove $20 alternate20 1
execute if score $20 alternate20 matches 0 as @a[scores={ready=1}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if score $20 alternate20 matches 0 as @a[scores={ready=0}] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 0
execute if score $20 alternate20 matches ..0 run scoreboard players set $20 alternate20 20

execute unless score $time startup_timer matches -101 run scoreboard players remove $time startup_timer 1
scoreboard players operation $time startup_title = $time startup_timer
scoreboard players operation $time startup_title /= $20 number
scoreboard players add $time startup_title 1
execute unless score $time startup_timer matches 1..20 run title @a[scores={joinsong=..0},gamemode=adventure] title [{"score":{"objective":"startup_title","name":"$time"},"color":"dark_aqua"},{"text":" seconds","color":"aqua"}]
execute if score $time startup_timer matches 1..20 run title @a[scores={joinsong=..0},gamemode=adventure] title [{"text":"1","color":"dark_aqua"},{"text":" second","color":"aqua"}]
title @a[scores={joinsong=..0,ready=0},gamemode=adventure] subtitle [{"text":"to join the game . . .","color":"dark_red"}]
title @a[scores={joinsong=..0,ready=1},gamemode=adventure] subtitle [{"text":"till the game begins . . . ","color":"blue"},{"text":"(","color":"gray"},{"score":{"objective":"rplayers","name":"$number"},"color":"white"},{"text":"/","color":"gray"},{"score":{"objective":"nplayers","name":"$number"},"color":"white"},{"text":")","color":"gray"}]


execute if score $time startup_timer matches 0 run function show:startup
execute if score $time startup_timer matches 0 run scoreboard players add @a[tag=playing] stats_games 1
