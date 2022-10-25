clear @a[team=rab_old]
gamemode adventure @a[team=rab_old,gamemode=!adventure,tag=playing]

execute if entity @a[team=rab_old,tag=tutorial] run schedule function scenario:steal_a_gem_old/tutorial_setup 40t
execute unless entity @a[team=rab_old,tag=tutorial] run schedule function scenario:check_countdown 40t

scoreboard objectives add rab_old_elevator dummy
scoreboard players set $time rab_old_elevator 0
kill @e[type=area_effect_cloud,tag=rab_old_elevator]
fill 15927 72 1 15927 70 -1 air
clone 15906 72 -2 15908 76 2 15944 62 -2

scoreboard objectives add rab_old_suspicion dummy

kill @e[tag=rab_old_office_spawn]
summon area_effect_cloud 15957 70 17 {Tags:["infinite","rab_old_office_spawn"],Duration:10000}
summon area_effect_cloud 15949 70 17 {Tags:["infinite","rab_old_office_spawn"],Duration:10000}
summon area_effect_cloud 15957 70 -17 {Tags:["infinite","rab_old_office_spawn"],Duration:10000}
summon area_effect_cloud 15949 70 -17 {Tags:["infinite","rab_old_office_spawn"],Duration:10000}


scoreboard objectives remove rab_old_seconds
scoreboard objectives add rab_old_seconds dummy {"text":"Time Remaining","color":"dark_red","bold":true}
scoreboard objectives add rab_old_timer dummy



bossbar remove steal_a_gem_old:suspicion
bossbar add steal_a_gem_old:suspicion {"text":"Suspicion Level","color":"blue","bold":true}
bossbar set steal_a_gem_old:suspicion visible false
bossbar set steal_a_gem_old:suspicion players @a[gamemode=adventure,tag=playing,team=rab_old]
bossbar set steal_a_gem_old:suspicion color blue
bossbar set steal_a_gem_old:suspicion style progress
bossbar set steal_a_gem_old:suspicion max 300
bossbar set steal_a_gem_old:suspicion value 0
tag @e[type=item,x=16000,y=66,z=0,distance=..200] add rab_old_die
kill @e[tag=rab_old_die,x=16000,y=66,z=0,distance=..200]
scoreboard objectives add rab_old_bar dummy
scoreboard players set $number rab_old_bar 0
summon minecraft:zombie 15966 70 4 {DeathLootTable:"minecraft:scenario/empty",Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,Health:2,Attributes:[{Name:"generic.follow_range",Base:0}],Tags:["rab_old_guard","rab_old_ai_on_start","rab_old_die"],NoAI:1,Rotation:[-90.0f,0.0f],CustomName:"{\"text\":\"Security Guard\",\"color\":\"gold\"}",CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13882323}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1168821836,1227312204,-1655610607,49728517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWE2MWM3MTU1ZWI3MzFjZTIzYmExOTkxNGZmODNmOWI0YzAzYzY5ZTJjZTUxZGU2MzYwZmE2MTY2MmUzZDA2NSJ9fX0="}]}}}}]}

summon minecraft:zombie 15966 70 -4 {DeathLootTable:"minecraft:scenario/empty",Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,Health:2,Attributes:[{Name:"generic.follow_range",Base:0}],Tags:["rab_old_guard","rab_old_ai_on_start","rab_old_die"],NoAI:1,Rotation:[-90.0f,0.0f],CustomName:"{\"text\":\"Security Guard\",\"color\":\"gold\"}",CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13882323}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1168821836,1227312204,-1655610607,49728517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWE2MWM3MTU1ZWI3MzFjZTIzYmExOTkxNGZmODNmOWI0YzAzYzY5ZTJjZTUxZGU2MzYwZmE2MTY2MmUzZDA2NSJ9fX0="}]}}}}]}


summon minecraft:zombie 15936.0 70.5 15.0 {DeathLootTable:"minecraft:scenario/empty",Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,Health:2,Attributes:[{Name:"generic.follow_range",Base:0}],Tags:["rab_old_guard","rab_old_ai_on_start","rab_old_die"],NoAI:1,Rotation:[0.0f,0.0f],CustomName:"{\"text\":\"Security Guard\",\"color\":\"gold\"}",CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13882323}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1168821836,1227312204,-1655610607,49728517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWE2MWM3MTU1ZWI3MzFjZTIzYmExOTkxNGZmODNmOWI0YzAzYzY5ZTJjZTUxZGU2MzYwZmE2MTY2MmUzZDA2NSJ9fX0="}]}}}}]}
summon minecraft:zombie 15933 70 15 {DeathLootTable:"minecraft:scenario/empty",Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,Health:2,Attributes:[{Name:"generic.follow_range",Base:0}],Tags:["rab_old_guard","rab_old_ai_on_start","rab_old_die"],NoAI:1,Rotation:[-90.0f,0.0f],CustomName:"{\"text\":\"Security Guard\",\"color\":\"gold\"}",CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13882323}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1168821836,1227312204,-1655610607,49728517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWE2MWM3MTU1ZWI3MzFjZTIzYmExOTkxNGZmODNmOWI0YzAzYzY5ZTJjZTUxZGU2MzYwZmE2MTY2MmUzZDA2NSJ9fX0="}]}}}}]}

execute as @a[tag=playing,team=rab_old] run summon minecraft:zombie 15936 70 -15 {DeathLootTable:"minecraft:scenario/empty",Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,Health:2,Attributes:[{Name:"generic.follow_range",Base:0}],Tags:["rab_old_guard","rab_old_ai_on_start","rab_old_die","rab_old_delayed_collision"],NoAI:1,Rotation:[-90.0f,0.0f],CustomName:"{\"text\":\"Security Guard\",\"color\":\"gold\"}",CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13882323}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1168821836,1227312204,-1655610607,49728517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWE2MWM3MTU1ZWI3MzFjZTIzYmExOTkxNGZmODNmOWI0YzAzYzY5ZTJjZTUxZGU2MzYwZmE2MTY2MmUzZDA2NSJ9fX0="}]}}}}]}

summon minecraft:zombie 15936.0 70.0625 0 {DeathLootTable:"minecraft:scenario/empty",Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,Health:2,Attributes:[{Name:"generic.follow_range",Base:0}],Tags:["rab_old_guard","rab_old_ai_on_start","rab_old_die","rab_old_lookout","rab_old_lookout_1"],NoAI:1,Rotation:[90.0f,0.0f],CustomName:"{\"text\":\"Security Guard\",\"color\":\"gold\"}",CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13882323}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1168821836,1227312204,-1655610607,49728517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWE2MWM3MTU1ZWI3MzFjZTIzYmExOTkxNGZmODNmOWI0YzAzYzY5ZTJjZTUxZGU2MzYwZmE2MTY2MmUzZDA2NSJ9fX0="}]}}}}]}

summon minecraft:zombie 15960.0 77.0625 0 {DeathLootTable:"minecraft:scenario/empty",Silent:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,Health:2,Attributes:[{Name:"generic.follow_range",Base:0}],Tags:["rab_old_guard","rab_old_ai_on_start","rab_old_die","rab_old_lookout","rab_old_lookout_2"],NoAI:1,Rotation:[90.0f,0.0f],CustomName:"{\"text\":\"Security Guard\",\"color\":\"gold\"}",CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13882323}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3881787}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1168821836,1227312204,-1655610607,49728517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWE2MWM3MTU1ZWI3MzFjZTIzYmExOTkxNGZmODNmOWI0YzAzYzY5ZTJjZTUxZGU2MzYwZmE2MTY2MmUzZDA2NSJ9fX0="}]}}}}]}


kill @e[type=armor_stand,tag=rab_old_gem]
summon minecraft:armor_stand 15953 61.55 0 {DisabledSlots:1048623,Tags:["rab_old_gem"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{rab_old_gem:1,HideFlags:63,display:{Name:'[{"text":"✧","color":"dark_aqua","italic":false},{"text":" Gem ","color":"aqua"},{"text":"✧","color":"dark_aqua"}]'},SkullOwner:{Id:[I;1779249861,-1945615709,-1110092384,68104524],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTY0ZjI1Y2ZmZjc1NGYyODdhOTgzOGQ4ZWZlMDM5OTgwNzNjMjJkZjdhOWQzMDI1YzQyNWUzZWQ3ZmY1MmMyMCJ9fX0="}]}}}}],Rotation:[90.0f,0.0f]}


scoreboard players set $number rab_old_alarm 0


scoreboard objectives add rab_old_patrol dummy

scoreboard players set @e[tag=rab_old_patrol] rab_old_patrol 3

team join collision @e[tag=rab_old_guard,type=zombie,tag=!rab_old_delayed_collision]

schedule function scenario:steal_a_gem_old/delayed_collision 100t

setblock 15967 71 19 minecraft:potted_red_mushroom


execute as @a[team=rab_old] at @s as @e[type=item_frame,distance=..200] at @s run data merge entity @s {Invulnerable:1,ItemRotation:0,Fixed:1b}
execute as @a[team=rab_old] at @s as @e[type=painting,distance=..200] at @s run data merge entity @s {Invulnerable:1}

scoreboard objectives add rab_old_rotation dummy

gamerule naturalRegeneration false

scoreboard objectives add rab_old_mask dummy
scoreboard players set @a rab_old_mask 0

scoreboard objectives add rab_old_dealt minecraft.custom:minecraft.damage_dealt
scoreboard players set @a rab_old_dealt 0

scoreboard objectives add rab_old_alarm dummy
scoreboard players set $time rab_old_alarm 0

scoreboard objectives add rab_old_follow dummy
scoreboard players set $number rab_old_follow 0

scoreboard objectives add rab_old_alarm_set dummy
scoreboard players set $number rab_old_alarm_set 0



scoreboard objectives add rab_old_align dummy

scoreboard objectives add rab_old_summon dummy

scoreboard objectives add rab_old_x dummy
scoreboard objectives add rab_old_y dummy
scoreboard objectives add rab_old_z dummy
scoreboard players set $time rab_old_summon 0
effect give @e[tag=rab_old_guard,type=zombie] invisibility 10000 255 true
effect give @e[tag=rab_old_guard,type=zombie] speed 10000 2 true

kill @e[type=area_effect_cloud,tag=rab_old_truck]
summon area_effect_cloud 15931 71 -29 {Tags:["rab_old_truck"],Duration:100000}


#truck door resets:
setblock 15931 71 -27 minecraft:iron_trapdoor[open=true,facing=north]
setblock 15931 72 -27 minecraft:iron_trapdoor[open=true,facing=north]
fill 15932 71 -25 15930 72 -25 air




#resetting environment


fill 15955 70 10 15951 71 -10 air replace dark_oak_door

setblock 15955 70 10 dark_oak_door[facing=north,hinge=right] replace
setblock 15955 71 10 dark_oak_door[facing=north,hinge=right,half=upper] replace

setblock 15951 70 10 dark_oak_door[facing=north,hinge=left] replace
setblock 15951 71 10 dark_oak_door[facing=north,hinge=left,half=upper] replace

setblock 15955 70 -10 dark_oak_door[facing=south,hinge=right] replace
setblock 15955 71 -10 dark_oak_door[facing=south,hinge=right,half=upper] replace

setblock 15951 70 -10 dark_oak_door[facing=south,hinge=left] replace
setblock 15951 71 -10 dark_oak_door[facing=south,hinge=left,half=upper] replace


fill 15969 70 18 15946 70 -19 spruce_trapdoor[facing=east,half=bottom,open=true] replace spruce_trapdoor[facing=east]
fill 15969 70 18 15946 70 -19 spruce_trapdoor[facing=west,half=bottom,open=true] replace spruce_trapdoor[facing=west]
fill 15969 70 18 15946 70 -19 spruce_trapdoor[facing=north,half=bottom,open=true] replace spruce_trapdoor[facing=north]
fill 15969 70 18 15946 70 -19 spruce_trapdoor[facing=south,half=bottom,open=true] replace spruce_trapdoor[facing=south]
setblock 15945 70 -4 minecraft:spruce_trapdoor[facing=south,open=true]
setblock 15949 70 -14 minecraft:oak_fence_gate[facing=north,open=true]
setblock 15957 70 -14 minecraft:oak_fence_gate[facing=north,open=true]
setblock 15957 70 14 minecraft:oak_fence_gate[facing=south,open=true]
setblock 15949 70 14 minecraft:oak_fence_gate[facing=south,open=true]

fill 15961 77 -17 15961 78 17 air replace dark_oak_door
setblock 15961 77 17 dark_oak_door[facing=west,half=lower,hinge=left]
setblock 15961 78 17 dark_oak_door[facing=west,half=upper,hinge=left]

setblock 15961 77 7 dark_oak_door[facing=west,half=lower,hinge=left]
setblock 15961 78 7 dark_oak_door[facing=west,half=upper,hinge=left]

setblock 15961 77 -7 dark_oak_door[facing=west,half=lower,hinge=right]
setblock 15961 78 -7 dark_oak_door[facing=west,half=upper,hinge=right]

setblock 15961 77 -17 dark_oak_door[facing=west,half=lower,hinge=right]
setblock 15961 78 -17 dark_oak_door[facing=west,half=upper,hinge=right]

fill 15948 77 -13 15957 79 13 minecraft:birch_trapdoor[facing=south,half=bottom,open=true] replace birch_trapdoor[facing=south,open=false]
fill 15948 77 -13 15957 79 13 minecraft:birch_trapdoor[facing=north,half=bottom,open=true] replace birch_trapdoor[facing=north,open=false]


fill 15962 70 -19 15946 74 18 dark_oak_trapdoor[facing=south,half=top,open=false] replace dark_oak_trapdoor[facing=south]
fill 15962 70 -19 15946 74 18 dark_oak_trapdoor[facing=east,half=top,open=false] replace dark_oak_trapdoor[facing=east]
fill 15962 70 -19 15946 74 18 dark_oak_trapdoor[facing=north,half=top,open=false] replace dark_oak_trapdoor[facing=north]
fill 15962 70 -19 15946 74 18 dark_oak_trapdoor[facing=west,half=top,open=false] replace dark_oak_trapdoor[facing=west]

fill 15961 77 -18 15971 82 21 dark_oak_trapdoor[facing=south,half=top,open=false] replace dark_oak_trapdoor[facing=south]
fill 15961 77 -18 15971 82 21 dark_oak_trapdoor[facing=east,half=top,open=false] replace dark_oak_trapdoor[facing=east]
fill 15961 77 -18 15971 82 21 dark_oak_trapdoor[facing=north,half=top,open=false] replace dark_oak_trapdoor[facing=north]
fill 15961 77 -18 15971 82 21 dark_oak_trapdoor[facing=west,half=top,open=false] replace dark_oak_trapdoor[facing=west]

