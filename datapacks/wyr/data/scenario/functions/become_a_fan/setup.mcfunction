clear @a[team=bafe]
gamemode adventure @a[team=bafe]



scoreboard players set @a[team=bafe] death 0
scoreboard objectives add bafe_timer dummy
scoreboard objectives remove bafe_seconds
scoreboard objectives add bafe_seconds dummy {"text":"Time Remaining","color":"gray","bold":true}


execute if entity @a[team=bafe,tag=tutorial] run schedule function scenario:become_a_fan/tutorial_setup 40t
execute unless entity @a[team=bafe,tag=tutorial] run schedule function scenario:check_countdown 40t


kill @e[type=area_effect_cloud,tag=fan_blade]
summon minecraft:area_effect_cloud 12002.50 49.00 1.50 {Tags:["fan_blade"],Rotation:[0.0f],Invulnerable:1b,Duration:600}
summon minecraft:area_effect_cloud 12002.50 49.00 1.50 {Tags:["fan_blade"],Rotation:[120.0f],Invulnerable:1b,Duration:600}
summon minecraft:area_effect_cloud 12002.50 49.00 1.50 {Tags:["fan_blade"],Rotation:[240.0f],Invulnerable:1b,Duration:600}

fill 11991 49 12 12013 49 -10 air replace minecraft:smooth_stone_slab
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^ ^ ^ ^ iron_block
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^1 ^1 ^ ^1 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^2 ^1 ^ ^2 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^3 ^1 ^ ^3 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^4 ^1 ^ ^4 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^5 ^1 ^ ^5 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^6 ^1 ^ ^6 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^7 ^1 ^ ^7 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^8 ^1 ^ ^8 minecraft:smooth_stone_slab replace air
execute as @e[tag=fan_blade,type=area_effect_cloud] at @s run fill ^ ^ ^9 ^1 ^ ^9 minecraft:smooth_stone_slab replace air


scoreboard objectives add bafe_blindness dummy
scoreboard players set @a[team=bafe,tag=playing] bafe_blindness 0
scoreboard objectives add bafe_motion dummy
scoreboard players set @a[team=bafe] bafe_motion 100
tag @s remove bafe_head_hit



execute positioned 11992 74 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 85 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 96 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 107 -9 run function scenario:become_a_fan/random_piece


execute positioned 11992 118 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 129 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 140 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 151 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 162 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 173 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 184 -9 run function scenario:become_a_fan/random_piece
execute positioned 11992 195 -9 run function scenario:become_a_fan/random_piece