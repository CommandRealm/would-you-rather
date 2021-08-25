execute if score $time dab_animation matches 1 as @e[tag=dab_code_s] at @s as @a run playsound minecraft:block.beacon.ambient master @s ~ ~ ~ 1 1.2
execute if score $time dab_animation matches 1 as @e[tag=dab_code_s] at @s as @a run playsound minecraft:block.beehive.shear master @s ~ ~ ~ 0.25 0

scoreboard players add $time dab_animation 1
execute if score $time dab_animation matches 1..60 as @e[tag=dab_code_s] at @s run tp @s ~ ~.05 ~
execute if score $time dab_animation matches 78 as @e[tag=dab_code_s] at @s as @a run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 0.25 0.75
execute if score $time dab_animation matches 80 run function scenario:defuse_tnt/launch
execute if score $time dab_animation matches 170 as @a[tag=playing,team=dab] at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 1
execute if score $time dab_animation matches 170 run scoreboard players set $time dab_animation 0



execute at @e[tag=dab_code_s,scores={dab_state=0}] run particle dust 1 0 0 1 ~ ~1 ~ 0 0 0 0 1
execute if entity @e[tag=dab_code_s] run kill @e[tag=dab_code]
execute as @e[tag=dab_code_s,scores={dab_sand=0}] at @s run summon falling_block ~ ~ ~ {Time:1,NoGravity:1,Tags:["die","dab_code"],BlockState:{Name:"minecraft:red_concrete"}}
execute as @e[tag=dab_code_s,scores={dab_sand=1}] at @s run summon falling_block ~ ~ ~ {Time:1,NoGravity:1,Tags:["die","dab_code"],BlockState:{Name:"minecraft:orange_concrete"}}
execute as @e[tag=dab_code_s,scores={dab_sand=2}] at @s run summon falling_block ~ ~ ~ {Time:1,NoGravity:1,Tags:["die","dab_code"],BlockState:{Name:"minecraft:yellow_concrete"}}
execute as @e[tag=dab_code_s,scores={dab_sand=3}] at @s run summon falling_block ~ ~ ~ {Time:1,NoGravity:1,Tags:["die","dab_code"],BlockState:{Name:"minecraft:lime_concrete"}}
execute as @e[tag=dab_code_s,scores={dab_sand=4}] at @s run summon falling_block ~ ~ ~ {Time:1,NoGravity:1,Tags:["die","dab_code"],BlockState:{Name:"minecraft:light_blue_concrete"}}
execute as @e[tag=dab_code_s,scores={dab_sand=5}] at @s run summon falling_block ~ ~ ~ {Time:1,NoGravity:1,Tags:["die","dab_code"],BlockState:{Name:"minecraft:purple_concrete"}}
execute as @e[tag=dab_code_s,scores={dab_sand=6}] at @s run summon falling_block ~ ~ ~ {Time:1,NoGravity:1,Tags:["die","dab_code"],BlockState:{Name:"minecraft:blue_concrete"}}
execute as @e[tag=dab_code_s,scores={dab_sand=7}] at @s run summon falling_block ~ ~ ~ {Time:1,NoGravity:1,Tags:["die","dab_code"],BlockState:{Name:"minecraft:pink_concrete"}}
execute as @e[tag=dab_code_s,scores={dab_sand=8}] at @s run summon falling_block ~ ~ ~ {Time:1,NoGravity:1,Tags:["die","dab_code"],BlockState:{Name:"minecraft:brown_concrete"}}



