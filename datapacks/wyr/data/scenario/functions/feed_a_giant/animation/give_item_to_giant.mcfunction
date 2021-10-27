# called to give the item to the giant
data modify entity @e[type=giant,tag=giant,limit=1] HandItems[0] set from entity @s Item
particle cloud ~ ~ ~ 0 0 0 0.25 10
kill @s