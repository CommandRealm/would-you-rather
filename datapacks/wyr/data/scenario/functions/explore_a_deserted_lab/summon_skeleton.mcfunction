execute if entity @s[tag=eadl_brute] run summon zombie ~ ~.1 ~ {PersistenceRequired:1b,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"minecraft:scenario/empty",ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}],Silent:1b,Motion:[0.0d,0.5d,0.0d],Tags:["eadl_die","eadl_skeleton","eadl_brute"],Invulnerable:1b,Attributes:[{Name:"generic.follow_range",Base:1024},{Name:"generic.attack_damage",Base:30},{Name:"generic.movement_speed",Base:0.35}]}
execute if entity @s[tag=eadl_standard] run summon zombie ~ ~.1 ~ {PersistenceRequired:1b,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"minecraft:scenario/empty",ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}],Silent:1b,Motion:[0.0d,0.5d,0.0d],Tags:["eadl_die","eadl_skeleton","eadl_standard"],Invulnerable:1b,Attributes:[{Name:"generic.follow_range",Base:1024},{Name:"generic.attack_damage",Base:15},{Name:"generic.movement_speed",Base:0.4}]}
execute if entity @s[tag=eadl_scout] run summon zombie ~ ~.1 ~ {PersistenceRequired:1b,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"minecraft:scenario/empty",ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}],Silent:1b,Motion:[0.0d,0.5d,0.0d],Tags:["eadl_die","eadl_skeleton","eadl_scout"],Invulnerable:1b,Attributes:[{Name:"generic.follow_range",Base:1024},{Name:"generic.attack_damage",Base:9},{Name:"generic.movement_speed",Base:0.5}]}
effect give @e[type=zombie,tag=eadl_die] invisibility 10000 255 true
execute if block ~ ~ ~ wither_skeleton_skull run setblock ~ ~ ~ air destroy
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 1 0
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 2
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 2
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 2
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 2
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 2
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 2
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 2
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 2
playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 0.75
tag @s add eadl_eadl_spawned_skeleton