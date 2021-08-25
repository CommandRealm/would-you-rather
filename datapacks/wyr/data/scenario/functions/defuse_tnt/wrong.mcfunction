scoreboard players set $1 dab_state 0
scoreboard players set $2 dab_state 0
scoreboard players set $3 dab_state 0

execute if blocks 25990 77 6 25990 77 6 25968 66 5 all run scoreboard players set $1 dab_state 1
execute if blocks 25990 77 6 25990 77 6 25968 66 4 all run scoreboard players set $1 dab_state 1
execute if blocks 25990 77 6 25990 77 6 25968 66 6 all run scoreboard players add $1 dab_state 2

execute if blocks 25990 77 5 25990 77 5 25968 66 6 all run scoreboard players set $2 dab_state 1
execute if blocks 25990 77 5 25990 77 5 25968 66 4 all run scoreboard players set $2 dab_state 1
execute if blocks 25990 77 5 25990 77 5 25968 66 5 all run scoreboard players add $2 dab_state 2

execute if blocks 25990 77 4 25990 77 4 25968 66 6 all run scoreboard players set $3 dab_state 1
execute if blocks 25990 77 4 25990 77 4 25968 66 5 all run scoreboard players set $3 dab_state 1
execute if blocks 25990 77 4 25990 77 4 25968 66 4 all run scoreboard players add $3 dab_state 2

execute if score $1 dab_state matches 0 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_1,limit=1] {CustomName:'[{"text":"*","color":"#f7000c"}]'}
execute if score $1 dab_state matches 1 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_1,limit=1] {CustomName:'[{"text":"*","color":"#5060d3"}]'}
execute if score $1 dab_state matches 2 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_1,limit=1] {CustomName:'[{"text":"*","color":"#18ff00"}]'}
execute if score $1 dab_state matches 3 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_1,limit=1] {CustomName:'[{"text":"*","color":"#00f7ba"}]'}

execute if score $2 dab_state matches 0 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_2,limit=1] {CustomName:'[{"text":"*","color":"#f7000c"}]'}
execute if score $2 dab_state matches 1 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_2,limit=1] {CustomName:'[{"text":"*","color":"#5060d3"}]'}
execute if score $2 dab_state matches 2 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_2,limit=1] {CustomName:'[{"text":"*","color":"#18ff00"}]'}
execute if score $2 dab_state matches 3 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_2,limit=1] {CustomName:'[{"text":"*","color":"#00f7ba"}]'}

execute if score $3 dab_state matches 0 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_3,limit=1] {CustomName:'[{"text":"*","color":"#f7000c"}]'}
execute if score $3 dab_state matches 1 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_3,limit=1] {CustomName:'[{"text":"*","color":"#5060d3"}]'}
execute if score $3 dab_state matches 2 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_3,limit=1] {CustomName:'[{"text":"*","color":"#18ff00"}]'}
execute if score $3 dab_state matches 3 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_3,limit=1] {CustomName:'[{"text":"*","color":"#00f7ba"}]'}





tellraw @a[team=dab,tag=playing,gamemode=adventure] [{"text":"\nResult:","color":"gray"},{"text":"\n"},{"selector":"@e[type=area_effect_cloud,tag=dab_pos_1,limit=1]"},{"text":"\n"},{"selector":"@e[type=area_effect_cloud,tag=dab_pos_2,limit=1]"},{"text":"\n"},{"selector":"@e[type=area_effect_cloud,tag=dab_pos_3,limit=1]"}]
