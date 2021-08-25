execute as @e[type=villager,tag=cms_first_customer] at @s run particle cloud ~ ~1 ~ 0.25 0.25 0.25 0.05 10
tp @e[type=villager,tag=cms_first_customer] 0 0 0
kill @e[type=villager,tag=cms_first_customer]
execute as @e[type=villager,tag=cms_customer] at @s run tp @s ~ ~ ~-1
execute positioned 38996 66 6 run tag @e[type=villager,tag=cms_customer,sort=nearest,limit=1] add cms_first_customer