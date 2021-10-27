execute as @e[tag=pickup_on_start] at @s run data merge entity @s {PickupDelay:20}
effect clear @a[tag=playing,team=sitw] invisibility
scoreboard players set $sitw active_scenario 1
execute as @e[tag=sitw_ai_on_start] at @s run data merge entity @s {NoAI:0}
item replace entity @a[team=sitw] hotbar.0 with wooden_sword{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:1024,UUID:[I; 1, 1, 1, 1]},{AttributeName:"generic.attack_damage",Amount:4,UUID:[I; 2, 2, 2, 2]}],display:{Name:"{\"text\":\"Wooden Sword\",\"color\":\"gold\",\"italic\":false}"}}
title @a[team=sitw] times 0 5 0
scoreboard players set $time sitw_timer 2400
bossbar set survive_in_the_wilderness:campfire players @a[tag=playing,team=sitw]
bossbar set survive_in_the_wilderness:campfire visible true
function scenario:survive_in_the_wilderness/active
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue sitw_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Survive in the wilderness",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow sitw_seconds
team modify sitw seeFriendlyInvisibles true
data merge entity @e[type=skeleton,x=1000,y=66,z=0,distance=..200,limit=1] {Fire:0s,Health:20s}
execute as @a[tag=playing,team=sitw,gamemode=adventure] store result score @s check_players if entity @a[tag=playing,team=sitw,gamemode=adventure]
execute if entity @a[tag=playing,team=sitw,scores={check_players=2..}] run item replace entity @a[team=sitw] hotbar.1 with carrot{display:{Name:"{\"text\":\"Carrot\",\"color\":\"dark_green\",\"italic\":false}"}} 3
execute if entity @a[tag=playing,team=sitw,scores={check_players=2..}] run item replace entity @a[team=sitw] hotbar.2 with glass_bottle{display:{Name:"{\"text\":\"Bottled Water\",\"color\":\"blue\",\"italic\":false}"}}
execute if entity @a[tag=playing,team=sitw,scores={check_players=4..}] run item replace entity @a[team=sitw] hotbar.1 with carrot{display:{Name:"{\"text\":\"Carrot\",\"color\":\"dark_green\",\"italic\":false}"}} 4
execute if entity @a[tag=playing,team=sitw,scores={check_players=4..}] run item replace entity @a[team=sitw] hotbar.3 with mutton{display:{Name:"{\"text\":\"Meat\",\"color\":\"red\",\"italic\":false}"}} 2
execute if entity @a[tag=playing,team=sitw,scores={check_players=5..}] run item replace entity @a[team=sitw] hotbar.3 with mutton{display:{Name:"{\"text\":\"Meat\",\"color\":\"red\",\"italic\":false}"}} 3
execute if entity @a[tag=playing,team=sitw,scores={check_players=6..}] run item replace entity @a[team=sitw] hotbar.1 with carrot{display:{Name:"{\"text\":\"Carrot\",\"color\":\"dark_green\",\"italic\":false}"}} 5
execute if entity @a[tag=playing,team=sitw,scores={check_players=7..}] run item replace entity @a[team=sitw] hotbar.3 with mutton{display:{Name:"{\"text\":\"Meat\",\"color\":\"red\",\"italic\":false}"}} 5
execute if entity @a[tag=playing,team=sitw,scores={check_players=10..}] run item replace entity @a[team=sitw] hotbar.1 with carrot{display:{Name:"{\"text\":\"Carrot\",\"color\":\"dark_green\",\"italic\":false}"}} 6

kill @e[type=item,nbt={Item:{id:"minecraft:stick"}},tag=sitw_die]
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute positioned 1000 66 0 as @e[tag=sitw_stick,sort=random,limit=1,distance=..100] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.05d,0.0d],Tags:["sitw_die"],PickupDelay:20,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Kindling\",\"color\":\"yellow\",\"italic\":false}"}}}}

##purpose: make division less abstract for removing heat thirst and warmth.
scoreboard players add @a[tag=playing,team=sitw] check_players 1
scoreboard players set @a[tag=playing,team=sitw,scores={check_players=10..}] check_players 10


tellraw @a[team=sitw] [{"text":"Reminder: ","color":"green","bold":true},{"text":"This scenario uses spam-click PvP.","color":"gray","bold":false}]


advancement grant @a[team=sitw,tag=playing,gamemode=adventure] only advancements:scenario_wilderness