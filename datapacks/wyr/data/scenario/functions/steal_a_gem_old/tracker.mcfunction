
execute unless entity @s[distance=..5] positioned ^ ^ ^1 run function scenario:steal_a_gem_old/tracker
execute unless entity @s[distance=..5] positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle dust 1 1 1 1 ~ ~.5 ~ 0 0 0 0 1 force @s
execute unless entity @s[distance=..5] positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle item quartz ~ ~.6 ~ 0 0 0 0.05 1 force @s