summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand sitw_random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand sitw_random %= $mod sitw_random
kill @e[type=area_effect_cloud,tag=random]