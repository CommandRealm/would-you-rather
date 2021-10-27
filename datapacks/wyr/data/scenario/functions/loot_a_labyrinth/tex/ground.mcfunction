# Get random number
summon area_effect_cloud ~ ~ ~ {Tags:["tex_random","labyrinth_die"],Age:1}
scoreboard players set $mod maze_random 7
execute store result score $rand maze_random run data get entity @e[type=area_effect_cloud,tag=tex_random,limit=1] UUID[0] 1
scoreboard players operation $rand maze_random %= $mod maze_random
kill @e[type=area_effect_cloud,tag=tex_random]

# Place in block
execute if score $rand maze_random matches 0 run setblock ~ ~ ~ dirt
execute if score $rand maze_random matches 1 run setblock ~ ~ ~ coarse_dirt
execute if score $rand maze_random matches 2 run setblock ~ ~ ~ dirt_path
execute if score $rand maze_random matches 3 run setblock ~ ~ ~ grass_block
execute if score $rand maze_random matches 4 run setblock ~ ~ ~ gravel
execute if score $rand maze_random matches 4 run setblock ~ ~-1 ~ tripwire
execute if score $rand maze_random matches 5 run setblock ~ ~ ~ green_wool
execute if score $rand maze_random matches 6 run setblock ~ ~ ~ moss_block

# Get random number
execute if block ~ ~1 ~ air unless block ~ ~ ~ dirt_path run summon area_effect_cloud ~ ~ ~ {Tags:["tex_random","labyrinth_die"],Age:1}
execute if block ~ ~1 ~ air unless block ~ ~ ~ dirt_path run scoreboard players set $mod maze_random 7
execute if block ~ ~1 ~ air store result score $rand maze_random unless block ~ ~ ~ dirt_path run data get entity @e[type=area_effect_cloud,tag=tex_random,limit=1] UUID[0] 1
execute if block ~ ~1 ~ air unless block ~ ~ ~ dirt_path run scoreboard players operation $rand maze_random %= $mod maze_random
kill @e[type=area_effect_cloud,tag=tex_random]

# Decorate
execute if block ~ ~1 ~ air if score $rand maze_random matches 3 unless block ~ ~ ~ dirt_path run setblock ~ ~1 ~ grass
execute if block ~ ~1 ~ air if score $rand maze_random matches 4 unless block ~ ~ ~ dirt_path run setblock ~ ~1 ~ tall_grass[half=lower]
execute if block ~ ~1 ~ tall_grass if score $rand maze_random matches 4 unless block ~ ~ ~ dirt_path run setblock ~ ~2 ~ tall_grass[half=upper]
execute if block ~ ~1 ~ air if score $rand maze_random matches 5 unless block ~ ~ ~ dirt_path run setblock ~ ~1 ~ moss_carpet
execute if block ~ ~1 ~ air if score $rand maze_random matches 6 unless block ~ ~ ~ dirt_path run setblock ~ ~1 ~ small_dripleaf[half=lower]
execute if block ~ ~1 ~ small_dripleaf if score $rand maze_random matches 6 unless block ~ ~ ~ dirt_path run setblock ~ ~2 ~ small_dripleaf[half=upper]