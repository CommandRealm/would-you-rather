execute unless entity @a[tag=playing,scores={adjust_points=1..}] run function game:pre_calculate_winner
execute if entity @a[tag=playing,scores={adjust_points=1..}] run schedule function game:pre_pre_calculate_winner 20t
