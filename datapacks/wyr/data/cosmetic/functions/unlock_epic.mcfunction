execute unless entity @s[tag=unlock_f_10] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_10"],Duration:1}
execute unless entity @s[tag=unlock_f_11] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_11"],Duration:1}
execute unless entity @s[tag=unlock_f_12] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_12"],Duration:1}
execute unless entity @s[tag=unlock_f_13] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_13"],Duration:1}

execute unless entity @s[tag=unlock_b_10] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_10"],Duration:1}
execute unless entity @s[tag=unlock_b_11] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_11"],Duration:1}
execute unless entity @s[tag=unlock_b_12] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_12"],Duration:1}
execute unless entity @s[tag=unlock_b_13] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_13"],Duration:1}

execute unless entity @s[tag=unlock_p_15] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_15"],Duration:1}
execute unless entity @s[tag=unlock_p_16] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_16"],Duration:1}
execute unless entity @s[tag=unlock_p_17] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_17"],Duration:1}
execute unless entity @s[tag=unlock_p_18] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_18"],Duration:1}
execute unless entity @s[tag=unlock_p_19] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_19"],Duration:1}
execute unless entity @s[tag=unlock_p_20] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_20"],Duration:1}
execute unless entity @s[tag=unlock_p_21] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_21"],Duration:1}

tag @e[type=area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_10] run function cosmetic:unlock_b_10
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_11] run function cosmetic:unlock_b_11
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_12] run function cosmetic:unlock_b_12
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_13] run function cosmetic:unlock_b_13

execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_10] run function cosmetic:unlock_f_10
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_11] run function cosmetic:unlock_f_11
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_12] run function cosmetic:unlock_f_12
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_13] run function cosmetic:unlock_f_13

execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_15] run function cosmetic:unlock_p_15
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_16] run function cosmetic:unlock_p_16
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_17] run function cosmetic:unlock_p_17
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_18] run function cosmetic:unlock_p_18
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_19] run function cosmetic:unlock_p_19
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_20] run function cosmetic:unlock_p_20
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_21] run function cosmetic:unlock_p_21

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 1.85
kill @e[tag=cosmetic_unlock,type=area_effect_cloud]