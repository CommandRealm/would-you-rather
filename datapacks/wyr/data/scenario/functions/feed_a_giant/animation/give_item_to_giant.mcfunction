# called to give the item to the giant
data modify entity @e[type=giant,tag=giant,limit=1] HandItems[0] set from entity @s Item
particle cloud ~ ~ ~ 0 0 0 0.25 10
kill @s


execute if entity @e[type=giant,tag=giant,scores={giant_item=1}] run kill @e[type=item,tag=giant_melon]
execute if entity @e[type=giant,tag=giant,scores={giant_item=2}] run kill @e[type=item,tag=giant_cake]
execute if entity @e[type=giant,tag=giant,scores={giant_item=3}] run kill @e[type=item,tag=giant_kelp]
execute if entity @e[type=giant,tag=giant,scores={giant_item=4}] run kill @e[type=item,tag=giant_honey]
execute if entity @e[type=giant,tag=giant,scores={giant_item=5}] run kill @e[type=item,tag=giant_cooked_beef]
execute if entity @e[type=giant,tag=giant,scores={giant_item=6}] run kill @e[type=item,tag=giant_berries]

# restate needs
execute if entity @e[type=item,tag=giant_food_option] run tellraw @a[tag=playing,team=giant] ["",{"text":"The ","color":"gray"},{"text":"GIANT","bold":true,"color":"dark_green"},{"text":" wants: ","color":"gray","bold":false},{"selector":"@e[type=item,tag=giant_food_option]"}]

execute as @a[team=giant] at @s run playsound minecraft:entity.experience_orb.pickup master @s