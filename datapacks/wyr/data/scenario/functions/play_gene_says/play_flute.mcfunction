execute as @e[type=area_effect_cloud,tag=pgs_sound_location] at @s run playsound minecraft:block.note_block.flute master @a[distance=5..,tag=playing] ~ ~ ~ 0.5 0.6
execute as @e[type=area_effect_cloud,tag=pgs_sound_location] at @s run particle minecraft:end_rod ~ ~.5 ~ 0 0 0 0.5 10 force @a[distance=5..,tag=playing]
scoreboard players set $sound pgs_timer 30
