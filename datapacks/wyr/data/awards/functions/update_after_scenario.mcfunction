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





