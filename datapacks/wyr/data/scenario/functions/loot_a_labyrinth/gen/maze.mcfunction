fill ~-1 ~ ~-1 ~1 ~ ~1 air replace white_concrete

summon area_effect_cloud ~ ~ ~ {Tags:["maze_random","labyrinth_die"],Age:1}
scoreboard players set $mod maze_random 4
execute store result score $rand maze_random run data get entity @e[type=area_effect_cloud,tag=maze_random,limit=1] UUID[0] 1
scoreboard players operation $rand maze_random %= $mod maze_random
kill @e[type=area_effect_cloud,tag=maze_random]

execute if score $rand maze_random matches 0 run function scenario:loot_a_labyrinth/gen/order1
execute if score $rand maze_random matches 1 run function scenario:loot_a_labyrinth/gen/order2
execute if score $rand maze_random matches 2 run function scenario:loot_a_labyrinth/gen/order3
execute if score $rand maze_random matches 3 run function scenario:loot_a_labyrinth/gen/order4

# Starting Walls
fill ~-2 ~2 ~-2 ~2 ~17 ~2 air
#execute if block ~2 ~ ~ light_blue_concrete run fill ~2 ~2 ~-2 ~2 ~17 ~2 cobblestone replace air
#execute if block ~-2 ~ ~ light_blue_concrete run fill ~-2 ~2 ~-2 ~-2 ~17 ~2 cobblestone replace air
#execute if block ~ ~ ~2 light_blue_concrete run fill ~2 ~2 ~2 ~-2 ~17 ~2 cobblestone replace air
#execute if block ~ ~ ~-2 light_blue_concrete run fill ~2 ~2 ~-2 ~-2 ~17 ~-2 cobblestone replace air

# Uncomment for maze generation
#function maze:gen/wall_count
#execute if score $wall_count gen matches 1 positioned ~-1 ~4 ~1 run function maze:gen/1_side
#execute if score $wall_count gen matches 2 positioned ~-1 ~ ~1 run function maze:gen/2_sides
#execute if score $wall_count gen matches 3 positioned ~-1 ~4 ~1 run function maze:gen/3_sides