# called when the animation is over. Reset the score, kill the received food, possibly restate needs, and then check when condition

scoreboard players set $animation giant_timer 0


# check win condition
execute unless entity @e[type=item,tag=giant_food_option] as @a[tag=playing,team=giant,gamemode=adventure] at @s run function scenario:feed_a_giant/success