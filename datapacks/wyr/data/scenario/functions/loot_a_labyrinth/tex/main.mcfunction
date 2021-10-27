# Walls
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~2 ~ run function scenario:loot_a_labyrinth/tex/very_low_wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~3 ~ run function scenario:loot_a_labyrinth/tex/very_low_wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~4 ~ run function scenario:loot_a_labyrinth/tex/very_low_wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~5 ~ run function scenario:loot_a_labyrinth/tex/low_wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~6 ~ run function scenario:loot_a_labyrinth/tex/low_wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~7 ~ run function scenario:loot_a_labyrinth/tex/low_wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~8 ~ run function scenario:loot_a_labyrinth/tex/low_wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~9 ~ run function scenario:loot_a_labyrinth/tex/low_wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~10 ~ run function scenario:loot_a_labyrinth/tex/wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~11 ~ run function scenario:loot_a_labyrinth/tex/wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~12 ~ run function scenario:loot_a_labyrinth/tex/wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~13 ~ run function scenario:loot_a_labyrinth/tex/wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~14 ~ run function scenario:loot_a_labyrinth/tex/wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~15 ~ run function scenario:loot_a_labyrinth/tex/wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~16 ~ run function scenario:loot_a_labyrinth/tex/wall
execute if block ~ ~ ~ light_blue_concrete positioned ~ ~17 ~ run function scenario:loot_a_labyrinth/tex/wall

# Ground
execute positioned ~ ~1 ~ run function scenario:loot_a_labyrinth/tex/ground

# Movement
tp @s ~1 ~ ~
execute store result score $texture_x maze_gen run data get entity @s Pos[0]
execute if score $texture_x maze_gen matches 14065.. run scoreboard players add @s maze_gen 1
execute if score $texture_x maze_gen matches 14065.. run tp @s ~-64 ~ ~1
#execute store result score $texture_z maze_gen run data get entity @s Pos[2]
execute unless score @s maze_gen matches 65.. at @s run function scenario:loot_a_labyrinth/tex/main
execute if score @s maze_gen matches 65.. run kill @s