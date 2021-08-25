execute as @r run function scenario:survive_a_ghast_a/random
execute if score $rand saga_random matches 0 run scoreboard players set @s saga_fireball -20
execute if score $rand saga_random matches 1 run scoreboard players set @s saga_fireball -60
execute if score $rand saga_random matches 2 run scoreboard players set @s saga_fireball -80
execute if score $rand saga_random matches 3 run scoreboard players set @s saga_fireball -120

execute if entity @s[tag=saga_1] run summon minecraft:fireball ~2 ~ ~ {ExplosionPower:3,direction:[0.5d,0.0d,0.0d],power:[0.1d,0.0d,0.0d],Invulnerable:1,Tags:["saga_die","saga_proj"]}
execute if entity @s[tag=saga_2] run summon minecraft:fireball ~ ~ ~2 {ExplosionPower:3,direction:[0.0d,0.0d,0.5d],power:[0.0d,0.0d,0.1d],Invulnerable:1,Tags:["saga_die","saga_proj"]}
execute if entity @s[tag=saga_3] run summon minecraft:fireball ~-2 ~ ~ {ExplosionPower:3,direction:[-0.5d,0.0d,0.0d],power:[-0.1d,0.0d,0.0d],Invulnerable:1,Tags:["saga_die","saga_proj"]}
execute if entity @s[tag=saga_4] run summon minecraft:fireball ~ ~ ~-2 {ExplosionPower:3,direction:[0.0d,0.0d,-0.5d],power:[0.0d,0.0d,-0.1d],Invulnerable:1,Tags:["saga_die","saga_proj"]}