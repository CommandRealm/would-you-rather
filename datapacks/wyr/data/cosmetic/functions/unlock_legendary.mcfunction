##@s[tag=unlock_p_25,tag=unlock_p_24,tag=unlock_p_23,tag=unlock_p_22,tag=unlock_b_15,tag=unlock_b_14,tag=unlock_f_15,tag=unlock_f_14]



tag @s add unlocked_legendary
execute unless entity @s[tag=unlock_p_42] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_42"],Duration:1}
execute unless entity @s[tag=unlock_p_43] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_43"],Duration:1}
execute unless entity @s[tag=unlock_p_44] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_44"],Duration:1}
execute unless entity @s[tag=unlock_p_45] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_45"],Duration:1}
execute unless entity @s[tag=unlock_p_46] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_46"],Duration:1}
execute unless entity @s[tag=unlock_p_47] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_47"],Duration:1}
execute unless entity @s[tag=unlock_p_48] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_48"],Duration:1}
execute unless entity @s[tag=unlock_p_49] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_49"],Duration:1}
execute unless entity @s[tag=unlock_p_50] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_50"],Duration:1}


execute unless entity @s[tag=unlock_b_15] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_15"],Duration:1}
execute unless entity @s[tag=unlock_b_14] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_14"],Duration:1}
execute unless entity @s[tag=unlock_f_15] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_15"],Duration:1}
execute unless entity @s[tag=unlock_f_14] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_14"],Duration:1}
tag @e[type=area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_42] run function cosmetic:unlock_p_42
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_43] run function cosmetic:unlock_p_43
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_44] run function cosmetic:unlock_p_44
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_45] run function cosmetic:unlock_p_45
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_46] run function cosmetic:unlock_p_46
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_47] run function cosmetic:unlock_p_47
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_48] run function cosmetic:unlock_p_48
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_49] run function cosmetic:unlock_p_49
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_50] run function cosmetic:unlock_p_50


execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_15] run function cosmetic:unlock_b_15
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_14] run function cosmetic:unlock_b_14
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_15] run function cosmetic:unlock_f_15
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_14] run function cosmetic:unlock_f_14
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 2
kill @e[tag=cosmetic_unlock,type=area_effect_cloud]