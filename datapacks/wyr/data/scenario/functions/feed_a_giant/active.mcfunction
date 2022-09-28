#timer:
scoreboard players remove $time giant_timer 1
scoreboard players operation : giant_timer = $time giant_timer
scoreboard players operation : giant_timer /= $20 number
scoreboard players add : giant_timer 1
execute unless score : giant_timer = : giant_seconds run scoreboard players operation : giant_seconds = : giant_timer


# called when a player needs to pick up an item
execute as @a[team=giant,tag=playing,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:4b}]}] if entity @e[type=item,distance=..2,tag=giant_food_option,sort=nearest,limit=1] run function scenario:feed_a_giant/pickup_item
# giving players items
execute as @a[team=giant,tag=playing,gamemode=adventure,scores={giant_item=1}] at @s unless data entity @s Inventory[{Slot:4b,id:"minecraft:melon_slice"}] run function scenario:feed_a_giant/get_item_1
execute as @a[team=giant,tag=playing,gamemode=adventure,scores={giant_item=2}] at @s unless data entity @s Inventory[{Slot:4b,id:"minecraft:cake"}] run function scenario:feed_a_giant/get_item_2
execute as @a[team=giant,tag=playing,gamemode=adventure,scores={giant_item=3}] at @s unless data entity @s Inventory[{Slot:4b,id:"minecraft:dried_kelp"}] run function scenario:feed_a_giant/get_item_3
execute as @a[team=giant,tag=playing,gamemode=adventure,scores={giant_item=4}] at @s unless data entity @s Inventory[{Slot:4b,id:"minecraft:honey_bottle"}] run function scenario:feed_a_giant/get_item_4
execute as @a[team=giant,tag=playing,gamemode=adventure,scores={giant_item=5}] at @s unless data entity @s Inventory[{Slot:4b,id:"minecraft:cooked_beef"}] run function scenario:feed_a_giant/get_item_5
execute as @a[team=giant,tag=playing,gamemode=adventure,scores={giant_item=6}] at @s unless data entity @s Inventory[{Slot:4b,id:"minecraft:glow_berries"}] run function scenario:feed_a_giant/get_item_6


# making the giant follow the player
execute as @e[type=giant,tag=giant,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,team=giant]

# if give the giant an item
execute if score $animation giant_timer matches 0 if entity @a[tag=playing,team=giant,gamemode=adventure,x=12999,y=78,z=21,distance=..5,scores={giant_item=1..}] run function scenario:feed_a_giant/animation/start

# if the eating animation is active
execute if score $animation giant_timer matches 1.. run function scenario:feed_a_giant/animation/main

# failing the scenario
execute if score $giant active_scenario matches 1 unless score $animation giant_timer matches 1.. if score $time giant_timer matches ..0 as @a[tag=playing,gamemode=adventure,team=giant] at @s run function scenario:feed_a_giant/fail

#activity:
execute if score $giant active_scenario matches 1 if score $time giant_timer matches 1.. run schedule function scenario:feed_a_giant/active 1t
execute if score $giant active_scenario matches 1 if score $time giant_timer matches ..0 if score $animation giant_timer matches 1.. run schedule function scenario:feed_a_giant/active 1t
execute if score $giant active_scenario matches 1 unless entity @a[team=giant] run function scenario:feed_a_giant/end
