# called when the animation is over. Reset the score, kill the received food, possibly restate needs, and then check when condition

scoreboard players set $animation giant_timer 0

execute if entity @e[type=giant,tag=giant,scores={giant_item=1}] run kill @e[type=item,tag=giant_melon]
execute if entity @e[type=giant,tag=giant,scores={giant_item=2}] run kill @e[type=item,tag=giant_cake]
execute if entity @e[type=giant,tag=giant,scores={giant_item=3}] run kill @e[type=item,tag=giant_kelp]
execute if entity @e[type=giant,tag=giant,scores={giant_item=4}] run kill @e[type=item,tag=giant_honey]
execute if entity @e[type=giant,tag=giant,scores={giant_item=5}] run kill @e[type=item,tag=giant_cooked_beef]
execute if entity @e[type=giant,tag=giant,scores={giant_item=6}] run kill @e[type=item,tag=giant_berries]

# restate needs
execute if entity @e[type=item,tag=giant_food_option] run tellraw @a[tag=playing,team=giant] ["",{"text":"The ","color":"gray"},{"text":"GIANT","bold":true,"color":"dark_green"},{"text":" wants: ","color":"gray","bold":false},{"selector":"@e[type=item,tag=giant_food_option]"}]

# check win condition
execute unless entity @e[type=item,tag=giant_food_option] as @a[tag=playing,team=giant,gamemode=adventure] at @s run function scenario:feed_a_giant/success