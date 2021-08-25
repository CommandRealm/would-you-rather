execute as @a[tag=playing] at @s run scoreboard players operation check-tie points > @s points
execute as @a[tag=playing] at @s run scoreboard players operation @s points -= check-tie points
scoreboard players set $number check_tie 0
tag @a[tag=playing,scores={points=0}] add maybe_winner
execute as @a[tag=playing,scores={points=0}] at @s run scoreboard players add $number check_tie 1
execute if score $number check_tie matches 1 run function end:players
execute if score $number check_tie matches 2.. run function show:tie