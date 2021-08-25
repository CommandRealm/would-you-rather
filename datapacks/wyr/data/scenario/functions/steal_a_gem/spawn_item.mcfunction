
tag @e[tag=rab_item,sort=random,limit=1,type=item] add rab_selected_item
summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["rab_spawning_item"]}
execute as @e[type=item,tag=rab_spawning_item,distance=..1] at @s run data modify entity @s Item set from entity @e[limit=1,tag=rab_selected_item,type=item] Item
kill @e[type=item,tag=rab_selected_item]
tag @e[tag=rab_spawning_item,sort=nearest,limit=1,distance=..1,type=item] add rab_item_in_map