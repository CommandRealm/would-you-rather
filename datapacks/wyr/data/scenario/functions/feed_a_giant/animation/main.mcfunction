# called when the animation
scoreboard players add $animation giant_timer 1

# floating up
execute if score $animation giant_timer matches ..50 as @e[type=item,tag=giant_about_to_eat,limit=1] at @s run data modify entity @s Motion[1] set value 0.1d


execute if score $animation giant_timer matches 60 as @e[type=item,tag=giant_about_to_eat,limit=1] at @s run function scenario:feed_a_giant/animation/give_item_to_giant


execute if score $animation giant_timer matches 80 as @e[type=giant,tag=giant,limit=1] at @s run function scenario:feed_a_giant/animation/eat

execute if score $animation giant_timer matches 100 as @e[type=giant,tag=giant,limit=1] at @s run function scenario:feed_a_giant/animation/over

