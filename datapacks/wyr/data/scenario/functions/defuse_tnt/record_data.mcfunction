scoreboard players set $mod random 6
function random:random
execute if score $rand random matches 0..1 run summon area_effect_cloud ~ 72.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_1"]}
execute if score $rand random matches 2..3 run summon area_effect_cloud ~ 73.0 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_2"]}
execute if score $rand random matches 4..5 run summon area_effect_cloud ~ 73.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_3"]}


execute if score $rand random matches 0 run summon area_effect_cloud ~ 73.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_3"]}
execute if score $rand random matches 1 run summon area_effect_cloud ~ 73.0 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_2"]}
execute if score $rand random matches 2 run summon area_effect_cloud ~ 73.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_3"]}
execute if score $rand random matches 3 run summon area_effect_cloud ~ 72.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_1"]}
execute if score $rand random matches 4 run summon area_effect_cloud ~ 73.0 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_2"]}
execute if score $rand random matches 5 run summon area_effect_cloud ~ 72.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_1"]}


execute if score $rand random matches 0 run summon area_effect_cloud ~ 73.0 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_2"]}
execute if score $rand random matches 1 run summon area_effect_cloud ~ 73.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_3"]}
execute if score $rand random matches 2 run summon area_effect_cloud ~ 72.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_1"]}
execute if score $rand random matches 3 run summon area_effect_cloud ~ 73.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_3"]}
execute if score $rand random matches 4 run summon area_effect_cloud ~ 72.5 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_1"]}
execute if score $rand random matches 5 run summon area_effect_cloud ~ 73.0 11 {Duration:10000,Tags:["die","dab_n_p","dab_particle","dab_data_2"]}


execute as @e[tag=dab_n_p,type=area_effect_cloud,tag=dab_data_1] at @s run scoreboard players operation @s dab_particle = $1 dab_state
execute as @e[tag=dab_n_p,type=area_effect_cloud,tag=dab_data_2] at @s run scoreboard players operation @s dab_particle = $2 dab_state
execute as @e[tag=dab_n_p,type=area_effect_cloud,tag=dab_data_3] at @s run scoreboard players operation @s dab_particle = $3 dab_state