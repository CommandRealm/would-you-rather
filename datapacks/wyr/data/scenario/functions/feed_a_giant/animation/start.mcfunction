# called to start the animation

scoreboard players operation @e[type=giant,tag=giant] giant_item = @p[tag=playing,team=giant,gamemode=adventure,x=12999,y=78,z=21,distance=..5,scores={giant_item=1..}] giant_item
clear @p[tag=playing,team=giant,gamemode=adventure,x=12999,y=78,z=21,distance=..5,scores={giant_item=1..}]
scoreboard players reset @p[tag=playing,team=giant,gamemode=adventure,x=12999,y=78,z=21,distance=..5,scores={giant_item=1..}] giant_item
execute if score @e[type=giant,tag=giant,limit=1] giant_item matches 1 run summon item 12999 79 21 {Item:{id:"minecraft:melon_slice",Count:1b},PickupDelay:10000,NoGravity:1b,Tags:["giant_die","giant_about_to_eat"]}
execute if score @e[type=giant,tag=giant,limit=1] giant_item matches 2 run summon item 12999 79 21 {Item:{id:"minecraft:cake",Count:1b},PickupDelay:10000,NoGravity:1b,Tags:["giant_die","giant_about_to_eat"]}
execute if score @e[type=giant,tag=giant,limit=1] giant_item matches 3 run summon item 12999 79 21 {Item:{id:"minecraft:dried_kelp",Count:1b},PickupDelay:10000,NoGravity:1b,Tags:["giant_die","giant_about_to_eat"]}
execute if score @e[type=giant,tag=giant,limit=1] giant_item matches 4 run summon item 12999 79 21 {Item:{id:"minecraft:honey_bottle",Count:1b},PickupDelay:10000,NoGravity:1b,Tags:["giant_die","giant_about_to_eat"]}
execute if score @e[type=giant,tag=giant,limit=1] giant_item matches 5 run summon item 12999 79 21 {Item:{id:"minecraft:cooked_beef",Count:1b},PickupDelay:10000,NoGravity:1b,Tags:["giant_die","giant_about_to_eat"]}
execute if score @e[type=giant,tag=giant,limit=1] giant_item matches 6 run summon item 12999 79 21 {Item:{id:"minecraft:glow_berries",Count:1b},PickupDelay:10000,NoGravity:1b,Tags:["giant_die","giant_about_to_eat"]}

# poof
particle cloud 12999 79 21 0 0 0 0.25 15
playsound minecraft:block.beacon.ambient master @a 12999 79 21 1 0

# starting the timer
scoreboard players set $animation giant_timer 1