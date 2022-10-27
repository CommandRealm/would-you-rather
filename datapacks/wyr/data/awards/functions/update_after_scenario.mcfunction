execute as @a[tag=playing] at @s run scoreboard players operation @s awd_run += @s awd_d_run
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_jump += @s awd_d_jump
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_drop += @s awd_d_drop
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_sneak += @s awd_d_sneak
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_taken += @s awd_d_taken
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_dealt += @s awd_d_dealt
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_mob_kills += @s awd_d_mob_kills
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_walk += @s awd_d_walk
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_movement += @s awd_d_run
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_movement += @s awd_d_walk
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_movement += @s awd_d_s_dist
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_chest
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_shulk
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_barr
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_dispenser
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_dropper
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_hopper
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_b_furnace
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_brew
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_furnace
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_loom
execute as @a[tag=playing] at @s run scoreboard players operation @s awd_thievery += @s awd_d_open_smoker

execute as @a[tag=playing] at @s run scoreboard players operation @s awd_sel_time += @s awd_r_sel_time


# advancements
execute as @a[tag=playing] at @s run scoreboard players operation @s advance_jump += @s awd_d_jump
execute as @a[tag=playing] at @s run scoreboard players operation @s advance_sneak += @s awd_d_sneak
advancement grant @a[scores={advance_jump=100..}] only advancements:game_jump
advancement grant @a[scores={advance_sneak=600..}] only advancements:game_sneak


scoreboard objectives remove awd_d_run
scoreboard objectives remove awd_d_jump
scoreboard objectives remove awd_d_drop
scoreboard objectives remove awd_d_sneak
scoreboard objectives remove awd_d_taken
scoreboard objectives remove awd_d_dealt
scoreboard objectives remove awd_d_mob_kills
scoreboard objectives remove awd_d_walk
scoreboard objectives remove awd_d_s_dist 
scoreboard objectives remove awd_d_companions

scoreboard objectives remove awd_d_open_chest
scoreboard objectives remove awd_d_open_shulk
scoreboard objectives remove awd_d_open_barr

scoreboard objectives remove awd_r_sel_time






