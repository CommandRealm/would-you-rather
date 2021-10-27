clear @a[team=hcm]
gamemode adventure @a[team=hcm]

tp @e[tag=hcm_die] 0 0 0
kill @e[tag=hcm_die]

summon area_effect_cloud 18990 74 25 {Tags:["hcm_spawn"]}
summon area_effect_cloud 18992 77 34 {Tags:["hcm_spawn"]}
summon area_effect_cloud 18999 77 37 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19004 71 42 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19002 81 38 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19009 78 36 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19013 74 35 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19013 77 32 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19009 78 23 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19008 73 16 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19000 72 17 {Tags:["hcm_spawn"]}
summon area_effect_cloud 18994 76 23 {Tags:["hcm_spawn"]}
summon area_effect_cloud 18997 79 28 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19000 79 33 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19003 81 29 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19000 77 17 {Tags:["hcm_spawn"]}
summon area_effect_cloud 19006 79 19 {Tags:["hcm_spawn"]}

execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon blaze ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"1 point","color":"#fcffa9"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon blaze ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"1 point","color":"#fcffa9"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon blaze ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"1 point","color":"#fcffa9"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon blaze ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"1 point","color":"#fcffa9"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon blaze ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"1 point","color":"#fcffa9"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}

execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon phantom ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"2 points","color":"yellow"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s,Invulnerable:1b}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon phantom ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"2 points","color":"yellow"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s,Invulnerable:1b}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon phantom ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"2 points","color":"yellow"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s,Invulnerable:1b}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon phantom ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"2 points","color":"yellow"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s,Invulnerable:1b}

execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon bee ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"4 points","color":"gold"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon bee ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"4 points","color":"gold"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon bee ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"4 points","color":"gold"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}

execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon parrot ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"3 points","color":"red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s,NoGravity:1b}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon parrot ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"3 points","color":"red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s,NoGravity:1b}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon parrot ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"3 points","color":"red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s,NoGravity:1b}

execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon vex ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"4 points","color":"red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon vex ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"4 points","color":"red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon vex ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"4 points","color":"red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}

execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon bat ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"5 points","color":"dark_red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon bat ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"5 points","color":"dark_red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}
execute as @a[tag=playing,team=hcm,gamemode=adventure,limit=10] at @e[type=area_effect_cloud,tag=hcm_spawn,sort=random,limit=1] run summon bat ~ ~ ~ {DeathLootTable:"scenario/empty",CustomName:'[{"text":"5 points","color":"dark_red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["hcm_die"],Health:1s}


scoreboard objectives add hcm_shoot minecraft.used:minecraft.bow
team join hcm @e[tag=hcm_die]

scoreboard objectives remove hcm_kill_blaze
scoreboard objectives remove hcm_kill_phantom
scoreboard objectives remove hcm_kill_bee
scoreboard objectives remove hcm_kill_parrot
scoreboard objectives remove hcm_kill_vex
scoreboard objectives remove hcm_kill_bat

fill 18989 93 14 19015 93 48 minecraft:barrier replace air

fill 18984 66 26 19016 64 26 spruce_trapdoor[facing=north,half=bottom,open=false] replace minecraft:spruce_trapdoor
fill 18984 66 32 19016 64 32 spruce_trapdoor[facing=south,half=bottom,open=false] replace minecraft:spruce_trapdoor

fill 19014 68 26 18990 71 32 minecraft:spruce_trapdoor[facing=west,open=false] replace minecraft:spruce_trapdoor[facing=west,half=bottom]
fill 19014 68 26 18990 71 32 minecraft:spruce_trapdoor[facing=east,open=false] replace minecraft:spruce_trapdoor[facing=east,half=bottom]

fill 19014 68 26 18990 71 32 minecraft:spruce_trapdoor[facing=west,open=false,half=top] replace minecraft:spruce_trapdoor[facing=west,half=top]
fill 19014 68 26 18990 71 32 minecraft:spruce_trapdoor[facing=east,open=false,half=top] replace minecraft:spruce_trapdoor[facing=east,half=top]

fill 19019 67 25 18984 67 25 minecraft:spruce_trapdoor[facing=north,half=top,open=true] replace minecraft:spruce_trapdoor
fill 19019 67 33 18984 67 33 minecraft:spruce_trapdoor[facing=south,half=top,open=true] replace minecraft:spruce_trapdoor


fill 18993 63 39 18997 84 39 minecraft:spruce_trapdoor[facing=north,open=true] replace minecraft:spruce_trapdoor
fill 18998 63 44 18998 84 40 minecraft:spruce_trapdoor[facing=east,open=true] replace minecraft:spruce_trapdoor
fill 18992 71 40 18992 76 44 minecraft:spruce_trapdoor[facing=west,open=true] replace minecraft:spruce_trapdoor
fill 18997 71 45 18997 76 45 minecraft:spruce_trapdoor[facing=south,open=true] replace minecraft:spruce_trapdoor

fill 18989 63 19 18999 72 10 minecraft:spruce_trapdoor[facing=south,open=true] replace minecraft:spruce_trapdoor[facing=south]
fill 18989 63 19 18999 72 10 minecraft:spruce_trapdoor[facing=north,open=true] replace minecraft:spruce_trapdoor[facing=north]
fill 18989 63 19 18999 72 10 minecraft:spruce_trapdoor[facing=east,open=true] replace minecraft:spruce_trapdoor[facing=east]
fill 18989 63 19 18999 72 10 minecraft:spruce_trapdoor[facing=west,open=true] replace minecraft:spruce_trapdoor[facing=west]

fill 18994 73 18 18990 73 18 minecraft:spruce_trapdoor[facing=south] replace minecraft:spruce_trapdoor
setblock 18998 73 14 minecraft:spruce_trapdoor[facing=east]

scoreboard objectives add hcm_kill_blaze minecraft.killed:minecraft.blaze
scoreboard objectives add hcm_kill_phantom minecraft.killed:minecraft.phantom
scoreboard objectives add hcm_kill_bee minecraft.killed:minecraft.bee
scoreboard objectives add hcm_kill_parrot minecraft.killed:minecraft.parrot
scoreboard objectives add hcm_kill_vex minecraft.killed:minecraft.vex
scoreboard objectives add hcm_kill_bat minecraft.killed:minecraft.bat


scoreboard objectives add hcm_arrow dummy


scoreboard objectives add hcm_timer dummy
scoreboard objectives remove hcm_seconds
scoreboard objectives add hcm_seconds dummy {"text":"Time Remaining","color":"gray","bold":true}

scoreboard objectives remove hcm_points
scoreboard objectives add hcm_points dummy
scoreboard players add @a[tag=playing,team=hcm,gamemode=adventure] hcm_points 0

execute if entity @a[team=hcm,tag=tutorial] run schedule function scenario:hunt_cave_monsters/tutorial_setup 40t
execute unless entity @a[team=hcm,tag=tutorial] run schedule function scenario:check_countdown 40t