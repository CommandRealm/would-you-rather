execute unless entity @s[tag=unlock_f_10] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_10"],Duration:1}
execute unless entity @s[tag=unlock_f_11] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_11"],Duration:1}
execute unless entity @s[tag=unlock_f_12] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_12"],Duration:1}
execute unless entity @s[tag=unlock_f_13] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","f_13"],Duration:1}

execute unless entity @s[tag=unlock_b_10] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_10"],Duration:1}
execute unless entity @s[tag=unlock_b_11] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_11"],Duration:1}
execute unless entity @s[tag=unlock_b_12] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_12"],Duration:1}
execute unless entity @s[tag=unlock_b_13] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","b_13"],Duration:1}

execute unless entity @s[tag=unlock_p_27] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_27"],Duration:1}
execute unless entity @s[tag=unlock_p_28] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_28"],Duration:1}
execute unless entity @s[tag=unlock_p_29] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_29"],Duration:1}
execute unless entity @s[tag=unlock_p_30] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_30"],Duration:1}
execute unless entity @s[tag=unlock_p_31] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_31"],Duration:1}
execute unless entity @s[tag=unlock_p_32] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_32"],Duration:1}
execute unless entity @s[tag=unlock_p_33] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_33"],Duration:1}
execute unless entity @s[tag=unlock_p_34] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_34"],Duration:1}
execute unless entity @s[tag=unlock_p_35] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_35"],Duration:1}
execute unless entity @s[tag=unlock_p_36] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_36"],Duration:1}
execute unless entity @s[tag=unlock_p_37] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_37"],Duration:1}
execute unless entity @s[tag=unlock_p_38] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_38"],Duration:1}
execute unless entity @s[tag=unlock_p_39] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_39"],Duration:1}
execute unless entity @s[tag=unlock_p_40] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_40"],Duration:1}
execute unless entity @s[tag=unlock_p_41] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","p_41"],Duration:1}


tag @e[type=area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_10] run function cosmetic:unlock_b_10
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_11] run function cosmetic:unlock_b_11
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_12] run function cosmetic:unlock_b_12
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=b_13] run function cosmetic:unlock_b_13

execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_10] run function cosmetic:unlock_f_10
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_11] run function cosmetic:unlock_f_11
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_12] run function cosmetic:unlock_f_12
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=f_13] run function cosmetic:unlock_f_13

execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_27] run function cosmetic:unlock_p_27
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_28] run function cosmetic:unlock_p_28
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_29] run function cosmetic:unlock_p_29
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_30] run function cosmetic:unlock_p_30
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_31] run function cosmetic:unlock_p_31
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_32] run function cosmetic:unlock_p_32
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_33] run function cosmetic:unlock_p_33
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_34] run function cosmetic:unlock_p_34
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_35] run function cosmetic:unlock_p_35
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_36] run function cosmetic:unlock_p_36
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_37] run function cosmetic:unlock_p_37
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_38] run function cosmetic:unlock_p_38
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_39] run function cosmetic:unlock_p_39
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_40] run function cosmetic:unlock_p_40
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=p_41] run function cosmetic:unlock_p_41


playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 1.85
kill @e[tag=cosmetic_unlock,type=area_effect_cloud]