gamerule naturalRegeneration false
tag @a remove hungry
time set 12700
gamemode adventure @a[tag=playing,gamemode=!adventure]
bossbar set survive_in_the_wilderness:campfire visible false
title @a[tag=playing] times 5 20 5
clear @a[tag=playing]
gamerule showDeathMessages false
gamerule doMobLoot true
effect clear @a[tag=playing]
execute as @a run attribute @s generic.max_health base set 20
effect give @a instant_health 1 255 true
gamerule fallDamage true
bossbar set become_a_miner_old:diamonds visible false
bossbar set steal_a_gem:suspicion visible false
bossbar set minecraft:play_gene_says/time visible false
scoreboard players reset ; timer_seconds

team modify semicolon suffix {"text":""}
team modify semicolon prefix {"text":""}
gamerule doTileDrops false
execute if score $game state matches 1 run scoreboard objectives setdisplay sidebar.team.blue
execute if score $game state matches 1 run scoreboard objectives setdisplay sidebar.team.yellow