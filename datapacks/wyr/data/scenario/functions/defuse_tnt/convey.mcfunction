execute as @e[tag=dab_conveyor] at @s if block ~-1 ~ ~ air run tp @s ~-1 ~ ~
execute as @e[tag=dab_conveyor] at @s unless block ~1 ~ ~ white_concrete run clone ~1 ~ ~ ~1 ~ ~ ~ ~ ~
execute as @e[tag=dab_conveyor] at @s unless block ~1 ~ ~ white_concrete run setblock ~1 ~ ~ air
execute as @e[tag=dab_conveyor] at @s unless block ~-1 ~ ~ air run function scenario:defuse_tnt/record_data
execute as @e[tag=dab_conveyor] at @s unless block ~-1 ~ ~ air run kill @s
execute if score $scenario active matches 1 if entity @e[tag=dab_conveyor] run schedule function scenario:defuse_tnt/convey 3t

execute if entity @e[tag=dab_n_p] run scoreboard players set $1 dab_state -1
execute if entity @e[tag=dab_n_p] run scoreboard players set $2 dab_state -1
execute if entity @e[tag=dab_n_p] run scoreboard players set $3 dab_state -1

execute if entity @e[tag=dab_n_p] if score $number dab_result matches 0 as @a[team=dab,tag=playing,gamemode=adventure] at @s run function scenario:defuse_tnt/fail
execute if entity @e[tag=dab_n_p] if score $number dab_result matches 1 as @a[tag=playing,team=dab,gamemode=adventure] at @s run function scenario:defuse_tnt/succeed
tag @e remove dab_n_p
execute as @a[tag=playing,team=dab] at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 1.15
