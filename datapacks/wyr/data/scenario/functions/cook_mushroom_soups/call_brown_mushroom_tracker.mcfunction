##execute at @e[tag=bam_old_diamond,sort=nearest,limit=1] run tp @e[tag=bam_old_diamond,sort=nearest,limit=1] ~ ~ ~ facing entity @s
execute positioned 39030 70 25 facing entity @s feet unless entity @s[distance=..4] run function scenario:cook_mushroom_soups/brown_mushroom_tracker