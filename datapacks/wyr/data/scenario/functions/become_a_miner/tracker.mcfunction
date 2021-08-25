
execute unless entity @s[distance=..2] positioned ^ ^ ^1 run function scenario:become_a_miner/tracker
execute unless entity @s[distance=..2] positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force @s
execute unless entity @s[distance=..2] positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle item diamond ~ ~.1 ~ 0 0 0 0.05 1 force @s