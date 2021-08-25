scoreboard players set $mod random 30
function random:random

execute if score $rand random matches 0 run summon hoglin ~ ~ ~ {PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],IsImmuneToZombification:1b,DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"]}
execute if score $rand random matches 1 run summon skeleton ~ ~ ~ {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CannotHunt:1b,PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"flame",lvl:1}]}},{}]}
execute if score $rand random matches 2..11 run summon piglin ~ ~ ~ {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CannotHunt:1b,PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],IsImmuneToZombification:1b,DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"],HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Enchantments:[{id:"fire_aspect",lvl:1}]}},{}]}
execute if score $rand random matches 12..18 run summon blaze ~ ~ ~ {PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"]}
execute if score $rand random matches 19..20 run summon magma_cube ~ ~ ~ {PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"],Size:0}
execute if score $rand random matches 21..22 run summon magma_cube ~ ~ ~ {PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"],Size:1}
execute if score $rand random matches 23..24 run summon magma_cube ~ ~ ~ {PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"],Size:2}
execute if score $rand random matches 25..29 run summon skeleton ~ ~ ~ {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],PersistenceRequired:1b,Health:15s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:scenario/empty",Tags:["rap_die","rap_enemy"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"flame",lvl:1}]}},{}]}