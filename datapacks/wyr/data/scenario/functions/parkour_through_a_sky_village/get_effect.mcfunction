execute if entity @s[scores={ptasv_duration=0}] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 2
execute if block ~ ~-0.25 ~ lime_concrete run scoreboard players set @s ptasv_effect 1
execute if block ~ ~-0.25 ~ lime_concrete run scoreboard players set @s ptasv_duration 3
execute if block ~ ~-0.25 ~ white_concrete run scoreboard players set @s ptasv_effect 2
execute if block ~ ~-0.25 ~ white_concrete run scoreboard players set @s ptasv_duration 70