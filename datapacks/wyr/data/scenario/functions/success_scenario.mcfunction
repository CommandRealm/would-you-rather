# advancement if we were alone
advancement grant @s[scores={awd_d_companions=1}] only advancements:game_only

execute as @a[gamemode=spectator,distance=..1] at @s run function game:unspectate_player
effect clear @s
gamemode spectator @s
clear @s
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.85
title @s actionbar {"text":" "}
tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has successfully completed their scenario.","color":"green"}]
tag @s add success
tag @s remove fail