clear @a[team=sitw]
effect give @a[team=sitw] invisibility 10000 255 true
gamemode adventure @a[team=sitw]
tag @a[team=sitw] add hungry
effect give @a[team=sitw] regeneration 2 255 true
effect give @a[team=sitw] saturation 1 255 true
scoreboard objectives add campfire_bar dummy
bossbar remove survive_in_the_wilderness:campfire
bossbar add survive_in_the_wilderness:campfire {"text":"Remaining Campfire Heat","color":"gold","bold":true}
bossbar set survive_in_the_wilderness:campfire max 1000
bossbar set survive_in_the_wilderness:campfire color red
bossbar set survive_in_the_wilderness:campfire value 1000
scoreboard players set $time campfire_bar 1000
scoreboard players set @a death 0
gamerule naturalRegeneration false
execute if entity @a[team=sitw,tag=tutorial] run schedule function scenario:survive_in_the_wilderness/tutorial_setup 40t
execute unless entity @a[team=sitw,tag=tutorial] run schedule function scenario:check_countdown 40t


fill 1000 65 -14 1002 65 -14 spruce_trapdoor[half=top,facing=north,open=true] replace minecraft:spruce_trapdoor
setblock 999 65 -13 spruce_trapdoor[facing=west,open=true,half=top]
setblock 1001 65 -13 minecraft:spruce_trapdoor[facing=east,half=top,open=false]
setblock 1003 65 -13 minecraft:spruce_trapdoor[half=top,facing=east,open=true]

kill @e[type=item,x=1000,y=66,z=0,distance=..200]
tp @e[tag=sitw_die,x=1000,y=66,z=0,distance=..200] 0 2 0
kill @e[tag=sitw_die,x=1000,y=66,z=0,distance=..200]
summon item 1000 66 -13 {Item:{id:"minecraft:mutton",Count:2b,tag:{display:{Name:"{\"text\":\"Meat\",\"color\":\"red\",\"italic\":false}"}}},PickupDelay:100000,Age:-1000000,Tags:["sitw_die","pickup_on_start"]}
summon item 1001 66 -13 {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",display:{Name:"{\"text\":\"Bottled Water\",\"color\":\"blue\",\"italic\":false}"}}},PickupDelay:100000,Age:-1000000,Tags:["sitw_die","pickup_on_start"]}
summon item 1002 66 -13 {Item:{id:"minecraft:carrot",Count:3b,tag:{display:{Name:"{\"text\":\"Carrot\",\"color\":\"dark_green\",\"italic\":false}"}}},PickupDelay:100000,Age:-1000000,Tags:["sitw_die","pickup_on_start"]}
summon item 1033 68 -13 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:1024,UUID:[I; 1, 1, 1, 1]},{AttributeName:"generic.attack_damage",Amount:6,UUID:[I; 2, 2, 2, 2]}],display:{Name:"{\"text\":\"Iron Sword\",\"color\":\"gray\",\"italic\":false}"}}},PickupDelay:100000,Age:-1000000,Tags:["sitw_die","pickup_on_start"]}
summon item 961 68 -3 {Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{HideFlags:63,Damage:70,display:{Name:"{\"text\":\"Tattered Shirt\",\"color\":\"gray\",\"italic\":false}"}}},PickupDelay:100000,Age:-1000000,Tags:["sitw_die","pickup_on_start"]}

setblock 1005 65 -13 minecraft:cauldron[level=1]
execute as @a[tag=playing,team=sitw,gamemode=adventure] store result score @s check_players if entity @a[tag=playing,team=sitw,gamemode=adventure]
summon bee 981 71 -30 {DeathLootTable:"minecraft:sitw/bee",Tags:["sitw_die","sitw_ai_on_start"],NoAI:1,PersistenceRequired:1b,Anger:1b}
execute if entity @a[tag=playing,team=sitw,scores={check_players=5..}] run summon bee 981 71 -30 {DeathLootTable:"minecraft:sitw/bee",Tags:["sitw_die","sitw_ai_on_start"],NoAI:1,PersistenceRequired:1b,Anger:1b}
summon skeleton 1002 66 -27 {DeathLootTable:"minecraft:sitw/skeleton",HandItems:[{},{}],Attributes:[{Base:5.0,Name:"generic.follow_range"}],Tags:["sitw_die","sitw_ai_on_start"],NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
summon skeleton 1023 68 -32 {PersistenceRequired:1b,CustomName:"{\"text\":\"Bear\",\"color\":\"red\"}",display:{Name:"{\"text\":\"Bear\",\"color\":\"red\"}"},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4267021}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7945500}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4267021}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;883429829,-583904597,680804674,472668226],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjA5ZTMxYjkzMzc3N2E0NTQ1NTJlOTJjMWZlZmU2ODJkODRhZmU2ODVlZjM5YTEzNzhiNmM4OWRlMGZmY2EifX19"}]}}}}],Silent:1b,Tags:["sitw_die","sitw_ai_on_start","sitw_bear"],Attributes:[{Base:20,Name:"generic.attack_damage"},{Base:14,Name:"generic.follow_range"},{Base:0.375,Name:"generic.movement_speed"},{Base:30,Name:"generic.max_health"}],Health:30s,DeathLootTable:"minecraft:sitw/bear",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],NoAI:1}

summon wolf 1010 67 23 {DeathLootTable:"minecraft:sitw/wolf",Tags:["sitw_die","sitw_ai_on_start"],NoAI:1,PersistenceRequired:1b}





setblock 1003 65 -7 air
setblock 1003 65 -7 campfire[facing=east,lit=true]

scoreboard objectives add sitw_hunger_f food

scoreboard objectives remove sitw_hunger

scoreboard objectives add sitw_hunger dummy


scoreboard objectives add sitw_bear dummy

scoreboard objectives add sitw_d_hunger dummy

scoreboard objectives add sitw_random dummy

scoreboard players set $mod sitw_random 10

scoreboard objectives add sitw_heat dummy

scoreboard objectives add sitw_thirst dummy

scoreboard objectives add sitw_heat_cool dummy

scoreboard objectives add sitw_thirst_cool dummy

scoreboard objectives add sitw_stick dummy
scoreboard players set $time sitw_stick 40


scoreboard objectives add sitw_hunger_cool dummy

scoreboard objectives add sitw_check_hung dummy

scoreboard objectives add sitw_drink minecraft.used:minecraft.potion
scoreboard players set @a sitw_drink 0

scoreboard objectives add sitw_carrot minecraft.used:minecraft.carrot
scoreboard players set @a sitw_carrot 0

scoreboard objectives add sitw_mutton minecraft.used:minecraft.mutton
scoreboard players set @a sitw_mutton 0

scoreboard objectives add sitw_c_mutton minecraft.used:minecraft.cooked_mutton
scoreboard players set @a sitw_c_mutton 0


scoreboard objectives add sitw_honey minecraft.used:minecraft.honey_bottle
scoreboard players set @a sitw_honey 0

scoreboard objectives add sitw_ambient dummy
scoreboard players set $time sitw_ambient 0

scoreboard objectives remove sitw_seconds
scoreboard objectives add sitw_seconds dummy {"text":"Time Remaining","color":"dark_red","bold":true}
scoreboard objectives add sitw_timer dummy

scoreboard players set @a[team=sitw] sitw_heat_cool 100
scoreboard players set @a[team=sitw] sitw_thirst_cool 140
scoreboard players set @a[team=sitw] sitw_hunger_cool 200

scoreboard players set @a[team=sitw] sitw_heat 10

scoreboard players set @a[team=sitw] sitw_thirst 15

scoreboard players set @a[team=sitw] sitw_d_hunger 20

scoreboard players set $100 number 100
scoreboard players set $130 number 130
scoreboard players set $260 number 260

scoreboard objectives add sitw_cook dummy

scoreboard objectives add sitw_count dummy

scoreboard objectives add sitw_param dummy

