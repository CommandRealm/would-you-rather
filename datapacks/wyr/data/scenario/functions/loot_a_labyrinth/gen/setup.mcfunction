kill @e[type=area_effect_cloud,tag=maze_start]

# Clone and Prepare Grid
clone 13967 0 13967 13999 0 13999 14000 0 14000

clone 13967 0 13967 13999 0 13999 14032 0 14000
clone 13967 0 13967 13999 0 13999 14000 0 14032
clone 13967 0 13967 13999 0 13999 14032 0 14032

fill 14000 0 14000 14064 0 14064 white_concrete replace air

fill 14000 1 14000 14064 1 14064 dirt

# Maze Starting Position
summon area_effect_cloud ~ ~ ~ {Tags:["maze_random","labyrinth_die"],Age:1}
scoreboard players set $mod maze_random 15
execute store result score $rand maze_random run data get entity @e[type=area_effect_cloud,tag=maze_random,limit=1] UUID[0] 1
scoreboard players operation $rand maze_random %= $mod maze_random
scoreboard players operation $rand maze_random *= 4 maze_random
scoreboard players operation $rand maze_random += 14002 maze_random
kill @e[type=area_effect_cloud,tag=maze_random]

summon area_effect_cloud 14000 0 14000 {Tags:["maze_start","labyrinth_die"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=maze_start] at @s store result entity @s Pos[0] double 1 run scoreboard players get $rand maze_random

summon area_effect_cloud ~ ~ ~ {Tags:["maze_random","labyrinth_die"],Age:1}
scoreboard players set $mod maze_random 15
execute store result score $rand maze_random run data get entity @e[type=area_effect_cloud,tag=maze_random,limit=1] UUID[0] 1
scoreboard players operation $rand maze_random %= $mod maze_random
scoreboard players operation $rand maze_random *= 4 maze_random
scoreboard players operation $rand maze_random += 14002 maze_random
kill @e[type=area_effect_cloud,tag=maze_random]

# Generate Maze
execute as @e[type=area_effect_cloud,tag=maze_start] at @s store result entity @s Pos[2] double 1 run scoreboard players get $rand maze_random
execute as @e[type=area_effect_cloud,tag=maze_start,limit=1] at @s run function scenario:loot_a_labyrinth/gen/maze
kill @e[type=area_effect_cloud,tag=maze_start]
fill 14029 0 14029 14035 0 14035 air
fill 14028 2 14028 14036 17 14036 iron_bars replace air
fill 14029 2 14029 14035 17 14035 air

# Insert Treasure
scoreboard players set $type maze_treasure 0
function scenario:loot_a_labyrinth/treasure/create
scoreboard players set $type maze_treasure 1
function scenario:loot_a_labyrinth/treasure/create
scoreboard players set $type maze_treasure 2
function scenario:loot_a_labyrinth/treasure/create
scoreboard players set $type maze_treasure 3
function scenario:loot_a_labyrinth/treasure/create
scoreboard players set $type maze_treasure 4
function scenario:loot_a_labyrinth/treasure/create
scoreboard players set $type maze_treasure 5
function scenario:loot_a_labyrinth/treasure/create
scoreboard players set $type maze_treasure 6
function scenario:loot_a_labyrinth/treasure/create
scoreboard players set $type maze_treasure 7
function scenario:loot_a_labyrinth/treasure/create
# Add extra treasures if needed
execute store result score $treasure_count maze_treasure if entity @e[type=item,tag=maze_treasure]
scoreboard players set $type maze_treasure 8
execute unless score $treasure_count maze_treasure matches 7.. run function scenario:loot_a_labyrinth/treasure/create
execute store result score $treasure_count maze_treasure if entity @e[type=item,tag=maze_treasure]
scoreboard players set $type maze_treasure 9
execute unless score $treasure_count maze_treasure matches 7.. run function scenario:loot_a_labyrinth/treasure/create
execute store result score $treasure_count maze_treasure if entity @e[type=item,tag=maze_treasure]
scoreboard players set $type maze_treasure 10
execute unless score $treasure_count maze_treasure matches 7.. run function scenario:loot_a_labyrinth/treasure/create

# Texture Maze
summon area_effect_cloud 14000 0 14000 {Tags:["maze_texture","labyrinth_die"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=maze_texture,limit=1] at @s run function scenario:loot_a_labyrinth/tex/main

setblock 14032 2 14032 air
setblock 14032 1 14032 beacon
setblock 14032 0 14032 iron_block