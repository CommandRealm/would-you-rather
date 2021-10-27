clear @a[team=giant]
gamemode adventure @a[team=giant]

#kills:
tp @e[tag=giant_die] 0 0 0
kill @e[tag=giant_die]


scoreboard objectives remove giant_item
scoreboard objectives add giant_item dummy

##if scenario needs timer:
scoreboard objectives add giant_timer dummy
scoreboard objectives add giant_seconds dummy {"text":"Time Remaining","color":"dark_green","bold":true}



# counting players
execute as @a[tag=playing,team=giant,gamemode=adventure] store result score @s check_players if entity @a[tag=playing,team=giant,gamemode=adventure]

scoreboard players set $time giant_timer 0
execute if entity @a[tag=playing,team=giant,gamemode=adventure,scores={check_players=1}] run scoreboard players set $time giant_timer 1200
execute if entity @a[tag=playing,team=giant,gamemode=adventure,scores={check_players=2}] run scoreboard players set $time giant_timer 600
scoreboard players set $animation giant_timer 0

# determining which foods will be used
summon item 13011 88 0 {Tags:["giant_die","giant_food_option","giant_melon"],Item:{id:"minecraft:melon_slice",Count:1b},CustomName:'[{"text":"MELON","bold":true,"color":"red"}]',PickupDelay:10000s}
summon item 12973 77.6 13 {Tags:["giant_die","giant_food_option","giant_cake"],Item:{id:"minecraft:cake",Count:1b},CustomName:'[{"text":"CAKE","bold":true,"color":"light_purple"}]',PickupDelay:10000s}
summon item 13020 78 -23 {Tags:["giant_die","giant_food_option","giant_kelp"],Item:{id:"minecraft:dried_kelp",Count:1b},CustomName:'[{"text":"KELP","bold":true,"color":"green"}]',PickupDelay:10000s}
summon item 13024 68 33 {Tags:["giant_die","giant_food_option","giant_honey"],Item:{id:"minecraft:honey_bottle",Count:1b},CustomName:'[{"text":"HONEY","bold":true,"color":"#ff871c"}]',PickupDelay:10000s}
summon item 13000 79 -14 {Tags:["giant_die","giant_food_option","giant_cooked_beef"],Item:{id:"minecraft:cooked_beef",Count:1b},CustomName:'[{"text":"BEEF","bold":true,"color":"#7d4105"}]',PickupDelay:10000s}
summon item 12978 87 14 {Tags:["giant_die","giant_food_option","giant_berries"],Item:{id:"minecraft:glow_berries",Count:1b},CustomName:'[{"text":"BERRIES","bold":true,"color":"yellow"}]',PickupDelay:10000s}


scoreboard players set @e[type=item,tag=giant_melon] giant_item 1
scoreboard players set @e[type=item,tag=giant_cake] giant_item 2
scoreboard players set @e[type=item,tag=giant_kelp] giant_item 3
scoreboard players set @e[type=item,tag=giant_honey] giant_item 4
scoreboard players set @e[type=item,tag=giant_cooked_beef] giant_item 5
scoreboard players set @e[type=item,tag=giant_berries] giant_item 6


# killing 3
kill @e[type=item,tag=giant_food_option,sort=random,limit=3]

# adding time
execute if entity @e[type=item,tag=giant_melon] run scoreboard players add $time giant_timer 300
execute if entity @e[type=item,tag=giant_cake] run scoreboard players add $time giant_timer 400
execute if entity @e[type=item,tag=giant_kelp] run scoreboard players add $time giant_timer 200
execute if entity @e[type=item,tag=giant_honey] run scoreboard players add $time giant_timer 250
execute if entity @e[type=item,tag=giant_cooked_beef] run scoreboard players add $time giant_timer 400
execute if entity @e[type=item,tag=giant_berries] run scoreboard players add $time giant_timer 400

# summoning giant
summon giant 12999 76 24 {Health:1,Rotation:[180f,0f],NoAI:1b,Invulnerable:1b,Tags:["giant_die","giant"]}


execute if entity @a[team=giant,tag=tutorial] run schedule function scenario:feed_a_giant/tutorial_setup 40t
execute unless entity @a[team=giant,tag=tutorial] run schedule function scenario:check_countdown 40t


# summoning items showing the path
summon area_effect_cloud 13018 72.5 -6 {Duration:1000000,Tags:["giant_die"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:melon_slice",Count:1b},PickupDelay:10000s,Tags:["giant_die"]}]}
summon area_effect_cloud 13015 72.5 -12 {Duration:1000000,Tags:["giant_die"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:dried_kelp",Count:1b},PickupDelay:10000s,Tags:["giant_die"]}]}
summon area_effect_cloud 12992 72.5 -8 {Duration:1000000,Tags:["giant_die"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:cooked_beef",Count:1b},PickupDelay:10000s,Tags:["giant_die"]}]}
summon area_effect_cloud 12994 70.5 1 {Duration:1000000,Tags:["giant_die"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:glow_berries",Count:1b},PickupDelay:10000s,Tags:["giant_die"]}]}
summon area_effect_cloud 12981 72.5 12 {Duration:1000000,Tags:["giant_die"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:cake",Count:1b},PickupDelay:10000s,Tags:["giant_die"]}]}
summon area_effect_cloud 13018 72.5 18 {Duration:1000000,Tags:["giant_die"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:honey_bottle",Count:1b},PickupDelay:10000s,Tags:["giant_die"]}]}