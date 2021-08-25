##@s[tag=unlock_p_25,tag=unlock_p_24,tag=unlock_p_23,tag=unlock_p_22,tag=unlock_b_15,tag=unlock_b_14,tag=unlock_f_15,tag=unlock_f_14]



tag @s add unlocked_legendary
execute unless entity @s[tag=unlock_p_25] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_25"],Duration:1}
execute unless entity @s[tag=unlock_p_24] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_24"],Duration:1}
execute unless entity @s[tag=unlock_p_23] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_23"],Duration:1}
execute unless entity @s[tag=unlock_p_22] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_22"],Duration:1}
execute unless entity @s[tag=unlock_b_15] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_15"],Duration:1}
execute unless entity @s[tag=unlock_b_14] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_14"],Duration:1}
execute unless entity @s[tag=unlock_f_15] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_15"],Duration:1}
execute unless entity @s[tag=unlock_f_14] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_14"],Duration:1}
tag @e[type=area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_25] run function cosmetic:unlock_p_25
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_24] run function cosmetic:unlock_p_24
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_23] run function cosmetic:unlock_p_23
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_22] run function cosmetic:unlock_p_22
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_15] run function cosmetic:unlock_b_15
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_14] run function cosmetic:unlock_b_14
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_15] run function cosmetic:unlock_f_15
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_14] run function cosmetic:unlock_f_14
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 2
kill @e[tag=cosmetic_unlock,type=area_effect_cloud]