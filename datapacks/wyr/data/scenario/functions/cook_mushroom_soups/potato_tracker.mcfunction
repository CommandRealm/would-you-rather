
execute unless entity @s[distance=..2] positioned ^ ^ ^1 run function scenario:cook_mushroom_soups/potato_tracker
execute unless entity @s[distance=..2] positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle dust 1 0.75 0 1 ~ ~ ~ 0 0 0 0 1 force @s
execute unless entity @s[distance=..2] positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle item potato ~ ~.1 ~ 0 0 0 0.05 1 force @s