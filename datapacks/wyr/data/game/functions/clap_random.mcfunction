summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $Rand clap_r run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $Rand clap_r %= $modulo clap_r
kill @e[type=area_effect_cloud,tag=random]