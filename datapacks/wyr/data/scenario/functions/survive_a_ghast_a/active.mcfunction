scoreboard players remove $time saga_timer 1
scoreboard players operation : saga_timer = $time saga_timer
scoreboard players operation : saga_timer /= $20 number
scoreboard players add : saga_timer 1
execute unless score : saga_timer = : saga_seconds run scoreboard players operation : saga_seconds = : saga_timer

execute if score $saga active_scenario matches 1 if score $time saga_timer matches 1.. run schedule function scenario:survive_a_ghast_a/active 1t
execute if score $saga active_scenario matches 1 unless entity @a[team=saga] run function scenario:survive_a_ghast_a/end

scoreboard players add @e[tag=saga_ghast,type=ghast] saga_fireball 1

execute as @e[tag=saga_ghast,scores={saga_fireball=90},type=ghast] at @s as @a[tag=playing,team=saga] run playsound minecraft:entity.ghast.warn master @s ~ ~ ~ 100 1
execute as @e[tag=saga_ghast,scores={saga_fireball=85},type=ghast] at @s as @a[tag=playing] run particle flame ~ ~ ~ 0 0 0 0.8 100

execute as @e[tag=saga_ghast,scores={saga_fireball=100},type=ghast] at @s run function scenario:survive_a_ghast_a/shoot

execute as @e[tag=saga_ghast,scores={saga_motion=1},type=ghast] at @s run data merge entity @s {Motion:[0.2d,0.0d,0.0d]}
execute as @e[tag=saga_ghast,scores={saga_motion=2},type=ghast] at @s run data merge entity @s {Motion:[0.0d,0.0d,0.2d]}
execute as @e[tag=saga_ghast,scores={saga_motion=3},type=ghast] at @s run data merge entity @s {Motion:[-0.2d,0.0d,0.0d]}
execute as @e[tag=saga_ghast,scores={saga_motion=4},type=ghast] at @s run data merge entity @s {Motion:[0.0d,0.0d,-0.2d]}

scoreboard players remove @e[tag=saga_ghast,type=ghast] saga_swap_d 1
execute as @e[tag=saga_ghast,scores={saga_swap_d=0},type=ghast] at @s run scoreboard players remove @s saga_motion 2
scoreboard players set @e[tag=saga_ghast,scores={saga_motion=-1},type=ghast] saga_motion 3
scoreboard players set @e[tag=saga_ghast,scores={saga_motion=0},type=ghast] saga_motion 4
execute as @e[tag=saga_ghast,scores={saga_swap_d=0},type=ghast] at @s run scoreboard players set @s saga_swap_d 180

execute as @e[type=fireball,tag=saga_proj] at @s run scoreboard players set @e[tag=saga_platform,distance=..4,type=area_effect_cloud,limit=1,sort=nearest] saga_fire 40
scoreboard players remove @e[tag=saga_platform,scores={saga_fire=0..},type=area_effect_cloud] saga_fire 1
execute as @e[tag=saga_platform,scores={saga_fire=1..},type=area_effect_cloud] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 fire replace air
execute as @e[tag=saga_platform,scores={saga_fire=0},type=area_effect_cloud] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace fire

execute as @e[tag=saga_platform,scores={saga_fire=1..},type=area_effect_cloud] at @s as @a[distance=..4.5,scores={saga_sprint=0},nbt={OnGround:1b},team=saga,tag=playing] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air run effect give @s wither 2 20 true


effect give @a[team=saga,gamemode=adventure] speed 2 1 true

execute if score $time saga_timer matches 0 as @a[team=saga,tag=playing,gamemode=adventure] at @s run function scenario:survive_a_ghast_a/success
execute as @a[team=saga,scores={death=1..},gamemode=adventure] at @s run function scenario:survive_a_ghast_a/fail
scoreboard players set @a[tag=playing,team=saga,gamemode=adventure] saga_sprint 0