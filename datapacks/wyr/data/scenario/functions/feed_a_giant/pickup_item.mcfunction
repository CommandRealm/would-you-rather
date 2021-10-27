# called to pickup item

scoreboard players operation @s giant_item = @e[type=item,distance=..2,tag=giant_food_option,sort=nearest,limit=1] giant_item
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1.25
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
