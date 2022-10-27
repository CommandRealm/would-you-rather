gamemode spectator @s
team join spectator
tag @s add playing_soon
tag @s add mute_own_fan
effect clear @s
clear @s
scoreboard players add @s stats_games 1
tag @s remove tutorial
scoreboard players reset @s rc
scoreboard players add @s points 0
tag @s remove success
tag @s remove fail

tellraw @s [{"text":"You are currently spectating! You will be added to the game as soon as possible.","color":"aqua"}]
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1000000 1.75


scoreboard players reset @s awd_d_run
scoreboard players reset @s awd_d_jump
scoreboard players reset @s awd_d_drop
scoreboard players reset @s awd_d_sneak
scoreboard players reset @s awd_d_taken
scoreboard players reset @s awd_d_dealt
scoreboard players reset @s awd_d_mob_kills
scoreboard players reset @s awd_d_walk
scoreboard players reset @s awd_d_s_dist
scoreboard players reset @s awd_d_companions

scoreboard players reset @s awd_d_open_chest
scoreboard players reset @s awd_d_open_barr
scoreboard players reset @s awd_d_open_shulk
scoreboard players reset @s awd_d_open_dispenser
scoreboard players reset @s awd_d_open_dropper
scoreboard players reset @s awd_d_open_hopper
scoreboard players reset @s awd_d_open_b_furnace
scoreboard players reset @s awd_d_open_brew
scoreboard players reset @s awd_d_open_furnace
scoreboard players reset @s awd_d_open_loom
scoreboard players reset @s awd_d_open_smoker

execute if score $number tutorial matches 1 run tag @s add tutorial

bossbar set lobby players @a[tag=!playing,tag=!playing_soon]