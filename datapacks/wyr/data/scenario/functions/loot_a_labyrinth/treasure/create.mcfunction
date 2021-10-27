# Get Position
summon area_effect_cloud ~ ~ ~ {Tags:["maze_random","labyrinth_die"],Age:1}
scoreboard players set $mod maze_random 15
execute store result score $rand maze_random run data get entity @e[type=area_effect_cloud,tag=maze_random,limit=1] UUID[0] 1
scoreboard players operation $rand maze_random %= $mod maze_random
# Make sure that treasure location is not in starting area
execute if score $rand maze_random matches 6..7 run scoreboard players operation $rand maze_random -= 4 maze_random
execute if score $rand maze_random matches 8..9 run scoreboard players operation $rand maze_random += 4 maze_random

scoreboard players operation $rand maze_random *= 4 maze_random
scoreboard players operation $rand maze_random += 14002 maze_random
kill @e[type=area_effect_cloud,tag=maze_random]

summon area_effect_cloud 14000 0 14000 {Tags:["maze_create","labyrinth_die"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=maze_create] at @s store result entity @s Pos[0] double 1 run scoreboard players get $rand maze_random

summon area_effect_cloud ~ ~ ~ {Tags:["maze_random","labyrinth_die"],Age:1}
scoreboard players set $mod maze_random 15
execute store result score $rand maze_random run data get entity @e[type=area_effect_cloud,tag=maze_random,limit=1] UUID[0] 1
scoreboard players operation $rand maze_random %= $mod maze_random
# Make sure that treasure location is not in starting area
execute if score $rand maze_random matches 6..7 run scoreboard players operation $rand maze_random -= 4 maze_random
execute if score $rand maze_random matches 8..9 run scoreboard players operation $rand maze_random += 4 maze_random

scoreboard players operation $rand maze_random *= 4 maze_random
scoreboard players operation $rand maze_random += 14002 maze_random
kill @e[type=area_effect_cloud,tag=maze_random]

execute as @e[type=area_effect_cloud,tag=maze_create] at @s store result entity @s Pos[2] double 1 run scoreboard players get $rand maze_random

# Insert Treasure
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 0 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:gold_block",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 1 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:gold_ingot",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 2 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:gold_nugget",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 3 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:totem_of_undying",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 4 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:spectral_arrow",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 5 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:enchanted_golden_apple",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 6 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:golden_carrot",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 7 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:golden_horse_armor",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 8 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:raw_gold",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 9 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:raw_gold_block",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}
execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks if score $type maze_treasure matches 10 run summon item ~.5 ~3 ~.5 {Item:{id:"minecraft:nether_gold_ore",Count:1b},Age:-32768,Invulnerable:1b,NoGravity:1b,Tags:["maze_treasure","labyrinth_die"],PickupDelay:32767}

execute as @e[type=area_effect_cloud,tag=maze_create,limit=1] at @s unless block ~ ~2 ~ mossy_stone_bricks run clone 13997 1 13997 13999 1 13999 ~-1 ~2 ~-1

kill @e[type=area_effect_cloud,tag=maze_create]