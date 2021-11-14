clear @a[team=pd]
gamemode adventure @a[team=pd,gamemode=!adventure,tag=playing]
execute if entity @a[team=pd,tag=tutorial] run schedule function scenario:play_dodgeball/tutorial_setup 40t
execute unless entity @a[team=pd,tag=tutorial] run schedule function scenario:check_countdown 40t

tp @e[tag=die,x=21000,y=66,z=0,distance=..200] 0 2 0
kill @e[tag=die,x=21000,y=66,z=0,distance=..200] 
kill @e[type=shulker,tag=pd_shulker] 


scoreboard objectives add pd_random dummy
scoreboard players set $mod pd_random 2
execute as @r at @s run function scenario:play_dodgeball/random


execute as @a[tag=playing,team=pd,gamemode=adventure] store result score @s check_players if entity @a[tag=playing,team=pd,gamemode=adventure]
execute if score $rand pd_random matches 0 run summon minecraft:shulker 20985 80 17 {DeathLootTable:"minecraft:scenario/empty",NoAI:1,Tags:["die","pd_ai_on_start","pd_shulker"],Color:14,PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2048,Name:"generic.followRange"}]}
execute if entity @a[tag=playing,team=pd,scores={check_players=2..}] if score $rand pd_random matches 0 run summon minecraft:shulker 20985 79 22 {DeathLootTable:"minecraft:scenario/empty",NoAI:1,Tags:["die","pd_ai_on_start","pd_shulker"],Color:14,PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2048,Name:"generic.followRange"}]}

execute if score $rand pd_random matches 0 run summon minecraft:shulker 20985 79 12 {DeathLootTable:"minecraft:scenario/empty",NoAI:1,Tags:["die","pd_ai_on_start","pd_shulker"],Color:14,PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2048,Name:"generic.followRange"}]}


execute if score $rand pd_random matches 1 run summon minecraft:shulker 20985 80 17 {DeathLootTable:"minecraft:scenario/empty",NoAI:1,Tags:["die","pd_ai_on_start","pd_shulker"],Color:11,PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2048,Name:"generic.followRange"}]}
execute if entity @a[tag=playing,team=pd,scores={check_players=2..}] if score $rand pd_random matches 1 run summon minecraft:shulker 20985 79 22 {DeathLootTable:"minecraft:scenario/empty",NoAI:1,Tags:["die","pd_ai_on_start","pd_shulker"],Color:11,PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2048,Name:"generic.followRange"}]}
execute if score $rand pd_random matches 1 run summon minecraft:shulker 20985 79 12 {DeathLootTable:"minecraft:scenario/empty",NoAI:1,Tags:["die","pd_ai_on_start","pd_shulker"],Color:11,PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2048,Name:"generic.followRange"}]}



scoreboard objectives add pd_sound dummy

scoreboard objectives add pd_timer dummy
scoreboard objectives remove pd_seconds
execute if score $rand pd_random matches 0 run scoreboard objectives add pd_seconds dummy {"text":"Time Remaining","color":"blue","bold":true}
execute if score $rand pd_random matches 1 run scoreboard objectives add pd_seconds dummy {"text":"Time Remaining","color":"red","bold":true}

scoreboard objectives add pd_taken minecraft.custom:minecraft.damage_taken
scoreboard players reset @a pd_taken

summon minecraft:villager 20976 70 8 {Tags:["pd_ai_on_start","die"],NoAI:1b,CustomName:'{"text":"Referee","color":"light_purple","bold":true}',CustomNameVisible:1b,VillagerData:{profession:"fletcher",biome:"minecraft:plains",level:5},Rotation:[-45.0f,0.0f]}
summon minecraft:villager 20994 70 26 {Tags:["pd_ai_on_start","die"],NoAI:1b,CustomName:'{"text":"Referee","color":"light_purple","bold":true}',CustomNameVisible:1b,VillagerData:{profession:"fletcher",biome:"minecraft:plains",level:5},Rotation:[135.0f,0.0f]}
team join collision @e[type=shulker,tag=pd_shulker]
