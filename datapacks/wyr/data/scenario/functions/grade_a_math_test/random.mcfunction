summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand gamt_random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand gamt_random %= $mod gamt_random
kill @e[type=area_effect_cloud,tag=random]