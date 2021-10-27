# Get random number
summon area_effect_cloud ~ ~ ~ {Tags:["tex_random","labyrinth_die"],Age:1}
scoreboard players set $mod maze_random 10
execute store result score $rand maze_random run data get entity @e[type=area_effect_cloud,tag=tex_random,limit=1] UUID[0] 1
scoreboard players operation $rand maze_random %= $mod maze_random
kill @e[type=area_effect_cloud,tag=tex_random]

# Place in block
execute if score $rand maze_random matches 0 run setblock ~ ~ ~ cobblestone
execute if score $rand maze_random matches 1..3 run setblock ~ ~ ~ mossy_cobblestone
execute if score $rand maze_random matches 4 run setblock ~ ~ ~ tuff
execute if score $rand maze_random matches 5..8 run setblock ~ ~ ~ moss_block
execute if score $rand maze_random matches 9 run setblock ~ ~ ~ andesite