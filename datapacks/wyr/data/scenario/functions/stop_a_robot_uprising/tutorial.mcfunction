##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=saru] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=saru_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=saru] run schedule function scenario:stop_a_robot_uprising/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=5}] run title @a[team=saru,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Stop a robot uprising\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=5}] run title @a[team=saru,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=5}] as @a[team=saru,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=5}] as @a[team=saru,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=75}] run tellraw @a[team=saru,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Stop a robot uprising\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=75}] as @a[team=saru,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=90}] run tellraw @a[team=saru,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"All mobs and players are one-tap.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=90}] as @a[team=saru,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=130}] run tp @e[type=armor_stand,tag=saru_tutorial] 28991 69 0 -90 5
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=130}] run tellraw @a[team=saru,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"When you die, you will respawn outside the factory.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=130}] as @a[team=saru,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=190}] run tp @e[type=armor_stand,tag=saru_tutorial] 29004 69 -9 -10 5
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=190}] run tellraw @a[team=saru,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You have a limited number of lives, which will appear on your action bar.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=190}] as @a[team=saru,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=270}] run tp @e[type=armor_stand,tag=saru_tutorial] 29030 68.5 -19.0 -90 0
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=270}] run tellraw @a[team=saru,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"There are several types of enemy robots. Some will destroy nearby arrows, explode near players, or shoot at you.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=270}] as @a[team=saru,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=370}] run tp @e[type=armor_stand,tag=saru_tutorial] 29037 68 -14 45 10
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=370}] run tellraw @a[team=saru,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The archer robot gives off a warning particle around itself.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=370}] as @a[team=saru,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=430}] run tp @e[type=armor_stand,tag=saru_tutorial] 29019 77 30 -55 50
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=430}] run tellraw @a[team=saru,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Your goal is to kill the three glowing \"commander\" robots before time runs out or you run out of lives.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=430}] as @a[team=saru,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=550}] run function scenario:stop_a_robot_uprising/tutorial_end


##Effects:


execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=1}] run summon zombie 29048 67 11 {Silent:1b,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],DeathLootTable:"minecraft:scenario/empty",Tags:["saru_die","saru_basic"],PersistenceRequired:1b,Health:1,Attributes:[{Name:"generic.follow_range",Base:20},{Name:"generic.attack_damage",Base:10000}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14694672}}},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:observer",Count:1b}],HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:redstone",Count:1b}]}

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=1}] run summon zombie 29047 66 17 {Silent:1b,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],DeathLootTable:"minecraft:scenario/empty",Tags:["saru_die","saru_basic"],PersistenceRequired:1b,Health:1,Attributes:[{Name:"generic.follow_range",Base:20},{Name:"generic.attack_damage",Base:10000}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14694672}}},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:observer",Count:1b}],HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:redstone",Count:1b}],Rotation:[45f,0f]}

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=1}] run summon zombie 29041 67 18 {Silent:1b,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],DeathLootTable:"minecraft:scenario/empty",Tags:["saru_die","saru_basic"],PersistenceRequired:1b,Health:1,Attributes:[{Name:"generic.follow_range",Base:20},{Name:"generic.attack_damage",Base:10000}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14694672}}},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:observer",Count:1b}],HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:redstone",Count:1b}],Rotation:[-135f,0f]}

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=270}] run summon zombie 29034 67 -21 {Rotation:[90f,0f],Silent:1b,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],DeathLootTable:"minecraft:scenario/empty",Tags:["saru_die","saru_tank"],PersistenceRequired:1b,Health:1,Attributes:[{Name:"generic.follow_range",Base:20},{Name:"generic.attack_damage",Base:10000}],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:piston",Count:1b}],HandItems:[{id:"minecraft:shield",Count:1b},{id:"minecraft:lever",Count:1b}]}
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=270}] run summon zombie 29034 67 -18 {Rotation:[90f,0f],Silent:1b,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],DeathLootTable:"minecraft:scenario/empty",Tags:["saru_die","saru_tnt"],PersistenceRequired:1b,Health:1,Attributes:[{Name:"generic.follow_range",Base:20},{Name:"generic.attack_damage",Base:0}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:tnt",Count:1b}],HandItems:[{id:"minecraft:redstone_torch",Count:1b},{id:"minecraft:repeater",Count:1b}]}

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=370}] run summon skeleton 29035 67.1 -12 {Silent:1b,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],DeathLootTable:"minecraft:scenario/empty",Tags:["saru_die","saru_archer"],PersistenceRequired:1b,Health:1,Attributes:[{Name:"generic.follow_range",Base:20},{Name:"generic.attack_damage",Base:10000}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2590891}}},{id:"minecraft:target",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"power",lvl:100}]}},{id:"minecraft:hopper",Count:1b}]}
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=370..429}] run execute as @e[type=skeleton,tag=saru_archer] at @s run particle item redstone ~ ~.5 ~ 2 2 2 0.25 3

execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=430}] run summon zombie 29022.0 74 36  {Rotation:[135f,0f],Silent:1b,DeathLootTable:"minecraft:scenario/empty",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Tags:["saru_die","saru_commander"],PersistenceRequired:1b,Health:100,Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.follow_range",Base:20},{Name:"generic.attack_damage",Base:10000}],CustomName:'[{"text":"Commander","color":"dark_red","bold":true}]',ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{id:"projectile_protection",lvl:100}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Enchantments:[{id:"projectile_protection",lvl:100}]}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{id:"projectile_protection",lvl:100}]}},{id:"minecraft:command_block",Count:1b}],HandItems:[{id:"minecraft:netherite_sword",Count:1b},{}],CustomNameVisible:1b}
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=430}] run team join saru_enemy @e[type=zombie,tag=saru_commander]
execute if entity @a[tag=in_tutorial,tag=playing,team=saru,scores={tutorial=430}] run effect give @e[type=zombie,tag=saru_commander] glowing 6 255 true


##
effect give @e[tag=saru_die,type=zombie] invisibility 1000 255 true
##