##execute at @e[tag=bam_diamond,sort=nearest,limit=1] run tp @e[tag=bam_diamond,sort=nearest,limit=1] ~ ~ ~ facing entity @s
execute positioned 38972 65 1 facing entity @s feet unless entity @s[distance=..4] run function scenario:cook_mushroom_soups/potato_tracker