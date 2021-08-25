scoreboard players add @e[tag=typs] typs_direction 2
execute if entity @e[tag=typs,scores={typs_direction=1..4}] run function credits:typs_get_taco