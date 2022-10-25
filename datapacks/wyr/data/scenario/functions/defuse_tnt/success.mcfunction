
scoreboard players set $number dab_result 1

scoreboard players set $1 dab_state 0
scoreboard players set $2 dab_state 0
scoreboard players set $3 dab_state 0

scoreboard players set $incorrect dab_state 0
scoreboard players set $misplaced dab_state 0
scoreboard players set $correct dab_state 0
scoreboard players set $duplicate dab_state 0

execute if blocks 25990 77 6 25990 77 6 25968 66 5 all run scoreboard players set $1 dab_state 1
execute if blocks 25990 77 6 25990 77 6 25968 66 4 all run scoreboard players set $1 dab_state 1
execute if blocks 25990 77 6 25990 77 6 25968 66 6 all run scoreboard players add $1 dab_state 2

execute if blocks 25990 77 5 25990 77 5 25968 66 6 all run scoreboard players set $2 dab_state 1
execute if blocks 25990 77 5 25990 77 5 25968 66 4 all run scoreboard players set $2 dab_state 1
execute if blocks 25990 77 5 25990 77 5 25968 66 5 all run scoreboard players add $2 dab_state 2

execute if blocks 25990 77 4 25990 77 4 25968 66 6 all run scoreboard players set $3 dab_state 1
execute if blocks 25990 77 4 25990 77 4 25968 66 5 all run scoreboard players set $3 dab_state 1
execute if blocks 25990 77 4 25990 77 4 25968 66 4 all run scoreboard players add $3 dab_state 2

# Count up results (Parking Lot Patch)
execute if score $1 dab_state matches 0 run scoreboard players add $incorrect dab_state 1
execute if score $2 dab_state matches 0 run scoreboard players add $incorrect dab_state 1
execute if score $3 dab_state matches 0 run scoreboard players add $incorrect dab_state 1

execute if score $1 dab_state matches 1 run scoreboard players add $misplaced dab_state 1
execute if score $2 dab_state matches 1 run scoreboard players add $misplaced dab_state 1
execute if score $3 dab_state matches 1 run scoreboard players add $misplaced dab_state 1

execute if score $1 dab_state matches 2 run scoreboard players add $correct dab_state 1
execute if score $2 dab_state matches 2 run scoreboard players add $correct dab_state 1
execute if score $3 dab_state matches 2 run scoreboard players add $correct dab_state 1

execute if score $1 dab_state matches 3 run scoreboard players add $duplicate dab_state 1
execute if score $2 dab_state matches 3 run scoreboard players add $duplicate dab_state 1
execute if score $3 dab_state matches 3 run scoreboard players add $duplicate dab_state 1

execute unless score $correct dab_state matches 1 run tellraw @a[team=dab,tag=playing,gamemode=adventure] ["",{"text":"\n- Of these blocks:","color":"gray"},{"text":"\n"},{"score":{"objective":"dab_state","name":"$correct"},"color":"#18ff00","bold":true},{"text":" were Correct.","color":"#18ff00"}]
execute if score $correct dab_state matches 1 run tellraw @a[team=dab,tag=playing,gamemode=adventure] ["",{"text":"\n- Of these blocks:","color":"gray"},{"text":"\n"},{"score":{"objective":"dab_state","name":"$correct"},"color":"#18ff00","bold":true},{"text":" was Correct.","color":"#18ff00"}]
execute unless score $incorrect dab_state matches 1 run tellraw @a[team=dab,tag=playing,gamemode=adventure] ["",{"score":{"objective":"dab_state","name":"$incorrect"},"color":"#f7000c","bold":true},{"text":" were Incorrect.","color":"#f7000c"}]
execute if score $incorrect dab_state matches 1 run tellraw @a[team=dab,tag=playing,gamemode=adventure] ["",{"score":{"objective":"dab_state","name":"$incorrect"},"color":"#f7000c","bold":true},{"text":" was Incorrect.","color":"#f7000c"}]
execute unless score $misplaced dab_state matches 1 run tellraw @a[team=dab,tag=playing,gamemode=adventure] ["",{"score":{"objective":"dab_state","name":"$misplaced"},"color":"#5060d3","bold":true},{"text":" were Misplaced.","color":"#5060d3"}]
execute if score $misplaced dab_state matches 1 run tellraw @a[team=dab,tag=playing,gamemode=adventure] ["",{"score":{"objective":"dab_state","name":"$misplaced"},"color":"#5060d3","bold":true},{"text":" was Misplaced.","color":"#5060d3"}]
execute if score $duplicate dab_state matches 2.. run tellraw @a[team=dab,tag=playing,gamemode=adventure] ["",{"score":{"objective":"dab_state","name":"$duplicate"},"color":"#00f7ba","bold":true},{"text":" appear again.","color":"#00f7ba"}]
execute if score $duplicate dab_state matches 1 run tellraw @a[team=dab,tag=playing,gamemode=adventure] ["",{"score":{"objective":"dab_state","name":"$duplicate"},"color":"#00f7ba","bold":true},{"text":" appears again.","color":"#00f7ba"}]

#execute if score $1 dab_state matches 0 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_1,limit=1] {CustomName:'[{"text":"*","color":"#f7000c"}]'}
#execute if score $1 dab_state matches 1 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_1,limit=1] {CustomName:'[{"text":"*","color":"#5060d3"}]'}
#execute if score $1 dab_state matches 2 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_1,limit=1] {CustomName:'[{"text":"*","color":"#18ff00"}]'}
#execute if score $1 dab_state matches 3 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_1,limit=1] {CustomName:'[{"text":"*","color":"#00f7ba"}]'}
#
#execute if score $2 dab_state matches 0 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_2,limit=1] {CustomName:'[{"text":"*","color":"#f7000c"}]'}
#execute if score $2 dab_state matches 1 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_2,limit=1] {CustomName:'[{"text":"*","color":"#5060d3"}]'}
#execute if score $2 dab_state matches 2 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_2,limit=1] {CustomName:'[{"text":"*","color":"#18ff00"}]'}
#execute if score $2 dab_state matches 3 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_2,limit=1] {CustomName:'[{"text":"*","color":"#00f7ba"}]'}
#
#execute if score $3 dab_state matches 0 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_3,limit=1] {CustomName:'[{"text":"*","color":"#f7000c"}]'}
#execute if score $3 dab_state matches 1 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_3,limit=1] {CustomName:'[{"text":"*","color":"#5060d3"}]'}
#execute if score $3 dab_state matches 2 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_3,limit=1] {CustomName:'[{"text":"*","color":"#18ff00"}]'}
#execute if score $3 dab_state matches 3 run data merge entity @e[type=area_effect_cloud,tag=dab_particle_3,limit=1] {CustomName:'[{"text":"*","color":"#00f7ba"}]'}





#tellraw @a[team=dab,tag=playing,gamemode=adventure] [{"text":"\nResult:","color":"gray"},{"text":"\n"},{"selector":"@e[type=area_effect_cloud,tag=dab_pos_1,limit=1]"},{"text":"\n"},{"selector":"@e[type=area_effect_cloud,tag=dab_pos_2,limit=1]"},{"text":"\n"},{"selector":"@e[type=area_effect_cloud,tag=dab_pos_3,limit=1]"}]