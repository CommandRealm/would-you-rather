clear @a[team=pgs]
gamemode adventure @a[team=pgs]

#kills:
tp @e[tag=pgs_die] 0 0 0
kill @e[tag=pgs_die]

summon area_effect_cloud 27036 68 -18 {Duration:100000,Tags:["pgs_die"],CustomNameVisible:1b,CustomName:'[{"text":"Bathroom","color":"gray"}]'}
summon area_effect_cloud 27035 68 -8 {Duration:100000,Tags:["pgs_die"],CustomNameVisible:1b,CustomName:'[{"text":"Office","color":"dark_gray"}]'}
summon area_effect_cloud 27027 68 -17 {Duration:100000,Tags:["pgs_die"],CustomNameVisible:1b,CustomName:'[{"text":"Kitchen","color":"white"}]'}

##
scoreboard objectives add pgs_timer dummy





summon armor_stand 27035 66 -11 {DisabledSlots:2039583,Pose:{Body:[0f,4f,0f],Head:[8f,8f,360f],LeftArm:[335f,339f,0f],RightArm:[301f,38f,0f]},Rotation:[90.0f,0.0f],Tags:["pgs_gene","pgs_die"],NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15198183}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id: [I; 172890742, 2097103717, -2142657588, -932936961],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlmYzEyMmE4NzkwODM4YWRiNDE0ZDdjOGI4NWIyODRiMGZlM2ZjN2U4OTA2YTIzMjNmZmNjZjI1OGMzNGIwZSJ9fX0"}]}}}}]}

summon wolf 27032.0 66 -25.0 {Invulnerable:1b,NoAI:1b,Owner:[I; 0,0,0,0],Sitting:1b,CollarColor:3,Rotation:[-20f,0f],Tags:["pgs_die","pgs_wolf"]}

##27035 66 -11

execute if entity @a[team=pgs,tag=tutorial] run schedule function scenario:play_gene_says/tutorial_setup 40t
execute unless entity @a[team=pgs,tag=tutorial] run schedule function scenario:check_countdown 40t


#/summon armor_stand ~ ~ ~ {ShowArms:1b,Pose:{Body:[0f,4f,0f],Head:[8f,8f,360f],LeftArm:[335f,339f,0f],RightArm:[301f,38f,0f]}}



bossbar add minecraft:play_gene_says/time [{"text":"Time remaining to complete actions","color":"aqua"}]
bossbar set minecraft:play_gene_says/time color red
bossbar set minecraft:play_gene_says/time players @a[tag=playing,team=pgs]
bossbar set minecraft:play_gene_says/time max 180
bossbar set minecraft:play_gene_says/time value 180
bossbar set minecraft:play_gene_says/time style progress
bossbar set minecraft:play_gene_says/time visible false

execute as @e[type=painting,x=27000,y=66,z=0,distance=..1000] at @s run data merge entity @s {Invulnerable:1b}
effect clear @e[type=slime,x=27000,y=66,z=0,distance=..1000]
effect give @e[type=slime,x=27000,y=66,z=0,distance=..1000] invisibility 1000000 255 true




##Trapdoors and doors
fill 27036 67 -13 27036 68 -13 minecraft:spruce_trapdoor[facing=north,half=bottom,open=true] replace minecraft:spruce_trapdoor
fill 27036 67 -9 27036 68 -9 minecraft:spruce_trapdoor[facing=south,half=bottom,open=true] replace minecraft:spruce_trapdoor
fill 27036 69 -10 27036 69 -12 minecraft:spruce_trapdoor[facing=north]

fill 27038 66 -18 27038 67 -18 air
setblock 27038 66 -18 dark_oak_door[facing=west,half=lower,hinge=right,open=false]
setblock 27038 67 -18 dark_oak_door[facing=west,half=upper,hinge=right,open=false]
fill 27035 66 -6 27035 67 -6 air
setblock 27035 66 -6 dark_oak_door[facing=north,half=lower,hinge=right,open=false]
setblock 27035 67 -6 dark_oak_door[facing=north,half=upper,hinge=right,open=false]
fill 27015 66 -17 27015 67 -17 air
setblock 27015 66 -17 oak_door[facing=east,half=lower,hinge=left,open=false]
setblock 27015 67 -17 oak_door[facing=east,half=upper,hinge=left,open=false]
fill 27033 68 -3 27033 68 -4 minecraft:spruce_trapdoor[facing=east,half=bottom]