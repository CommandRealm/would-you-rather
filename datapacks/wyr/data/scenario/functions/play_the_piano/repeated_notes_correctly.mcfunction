title @s title [{"text":"Well done!","color":"aqua"}]
title @s subtitle [{"text":" "}]
execute if entity @s[scores={ptp_shown=6..}] run function scenario:play_the_piano/success
execute unless entity @s[scores={ptp_shown=6..}] run scoreboard players set @s ptp_timer -30
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 10000 1.7
clear @s