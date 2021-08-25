scoreboard players set $mod random 9
function random:random
execute unless entity @s[tag=unlock_p_25,tag=unlock_p_24,tag=unlock_p_23,tag=unlock_p_22,tag=unlock_b_15,tag=unlock_b_14,tag=unlock_f_15,tag=unlock_f_14] if score $rand random matches 0..1 run function cosmetic:unlock_legendary
execute unless entity @s[tag=unlocked_legendary] unless entity @s[tag=unlock_p_15,tag=unlock_p_16,tag=unlock_p_17,tag=unlock_p_18,tag=unlock_p_19,tag=unlock_p_20,tag=unlock_p_21,tag=unlock_b_10,tag=unlock_b_11,tag=unlock_b_12,tag=unlock_b_13,tag=unlock_f_10,tag=unlock_f_11,tag=unlock_f_12,tag=unlock_f_13] if score $rand random matches 2.. run function cosmetic:unlock_epic
tag @s remove unlocked_legendary