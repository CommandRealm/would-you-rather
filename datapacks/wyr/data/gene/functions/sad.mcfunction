scoreboard players add $time gene_timer 1
execute if score $time gene_timer matches 10 run kill @e[tag=gene]
execute if score $time gene_timer matches 20 run summon armor_stand -935 74.5 5 {NoGravity:1b,DisabledSlots:2039583,Pose:{RightArm:[-30.0f,50.0f,00.0f],Body:[-5.0f,0.0f,0.0f],LeftArm:[-45.0f,-40.0f,0.0f],Head:[35.0f,-15.0f,0.0f],RightLeg:[-70.0f,10.0f,0.0f],LeftLeg:[-80.0f,-15.0f,-8.0f]},Rotation:[150.0f,0.0f],Tags:["gene","gene1"],NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15198183}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id: [I; 172890742, 2097103717, -2142657588, -932936961],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlmYzEyMmE4NzkwODM4YWRiNDE0ZDdjOGI4NWIyODRiMGZlM2ZjN2U4OTA2YTIzMjNmZmNjZjI1OGMzNGIwZSJ9fX0"}]}}}}]}
execute as @e[tag=gene] at @s positioned ~ ~1.5 ~ run particle falling_water ~-0.25 ~ ~-0.25 0.15 0.15 0.15 0 1
execute if score $time gene_timer matches 20 run scoreboard players set $time gene_timer 250
execute as @e[tag=gene] at @s store result score @s gene_rotation run data get entity @s DisabledSlots:2039583,Pose.Head[1] 100
execute if score $time gene_timer matches 200..224 run scoreboard players add @e[tag=gene] gene_rotation 71
execute if score $time gene_timer matches 225..249 run scoreboard players remove @e[tag=gene] gene_rotation 71
execute if score $time gene_timer matches 250 run scoreboard players set $time gene_timer 200
execute as @e[tag=gene] at @s store result entity @s DisabledSlots:2039583,Pose.Head[1] float 0.01 run scoreboard players get @s gene_rotation
