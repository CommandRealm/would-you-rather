clear @a[team=saga]
gamemode adventure @a[team=saga,gamemode=!adventure,tag=playing]
execute if entity @a[team=saga,tag=tutorial] run schedule function scenario:survive_a_ghast_a/tutorial_setup 40t
execute unless entity @a[team=saga,tag=tutorial] run schedule function scenario:check_countdown 40t
gamerule naturalRegeneration false

scoreboard objectives add saga_timer dummy
scoreboard objectives remove saga_seconds
scoreboard objectives add saga_seconds dummy {"text":"Time Remaining","color":"red","bold":true}


tp @e[tag=saga_die,x=4000,y=66,z=0,distance=..200] 0 2 0
kill @e[tag=saga_die]
summon ghast 3962 85 0 {Tags:["saga_ghast","saga_die","saga_1"],NoAI:1,Rotation:[-90.0f,0.0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
summon ghast 3981 85 -19 {Tags:["saga_ghast","saga_die","saga_2"],NoAI:1,Rotation:[0.0f,0.0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
summon ghast 4000 85 0 {Tags:["saga_ghast","saga_die","saga_3"],NoAI:1,Rotation:[90.0f,0.0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
summon ghast 3981 85 19 {Tags:["saga_ghast","saga_die","saga_4"],NoAI:1,Rotation:[180.0f,0.0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}

scoreboard objectives add saga_fireball dummy
scoreboard players set @e[tag=saga_ghast] saga_fireball 0
scoreboard players remove @e[tag=saga_ghast,sort=random,limit=1,scores={saga_fireball=0}] saga_fireball 20
scoreboard players remove @e[tag=saga_ghast,sort=random,limit=1,scores={saga_fireball=0}] saga_fireball 50
scoreboard players remove @e[tag=saga_ghast,sort=random,limit=1,scores={saga_fireball=0}] saga_fireball 80


scoreboard objectives add saga_random dummy
scoreboard players set $mod saga_random 4

scoreboard objectives add saga_motion dummy
scoreboard objectives add saga_swap_d dummy
scoreboard players set @e[tag=saga_ghast] saga_swap_d 90

scoreboard players set @e[tag=saga_ghast,tag=saga_1] saga_motion 2
scoreboard players set @e[tag=saga_ghast,tag=saga_2] saga_motion 3
scoreboard players set @e[tag=saga_ghast,tag=saga_3] saga_motion 4
scoreboard players set @e[tag=saga_ghast,tag=saga_4] saga_motion 1

scoreboard objectives add saga_fire dummy

summon area_effect_cloud 3993 84 12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3987 84 12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3981 84 12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3975 84 12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3969 84 12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}

summon area_effect_cloud 3993 84 6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3987 84 6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3981 84 6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3975 84 6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3969 84 6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}

summon area_effect_cloud 3993 84 0 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3987 84 0 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3981 84 0 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3975 84 0 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3969 84 0 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}

summon area_effect_cloud 3993 84 -6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3987 84 -6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3981 84 -6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3975 84 -6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3969 84 -6 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}


summon area_effect_cloud 3993 84 -12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3987 84 -12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3981 84 -12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3975 84 -12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}
summon area_effect_cloud 3969 84 -12 {Duration:10000,Tags:["infinite","saga_platform","saga_die"]}

execute as @e[tag=saga_platform] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace fire

scoreboard objectives add saga_sprint minecraft.custom:minecraft.sprint_one_cm

scoreboard players set @a death 0