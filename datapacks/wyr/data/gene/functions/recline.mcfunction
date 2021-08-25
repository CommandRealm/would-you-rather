scoreboard players add $time gene_timer 1
execute if score $time gene_timer matches 10 run kill @e[tag=gene]
execute if score $time gene_timer matches 20 run summon armor_stand -935 75 4.25 {NoGravity:1b,DisabledSlots:2039583,Pose:{RightArm:[-100.0f,50.0f,00.0f],Body:[-10.0f,0.0f,0.0f],LeftArm:[-95.0f,-40.0f,0.0f],Head:[-25.0f,0.0f,0.0f],RightLeg:[-40.0f,10.0f,0.0f],LeftLeg:[-50.0f,-15.0f,-8.0f]},Rotation:[180.0f,0.0f],Tags:["gene","gene1"],NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15198183}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id: [I; 172890742, 2097103717, -2142657588, -932936961],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlmYzEyMmE4NzkwODM4YWRiNDE0ZDdjOGI4NWIyODRiMGZlM2ZjN2U4OTA2YTIzMjNmZmNjZjI1OGMzNGIwZSJ9fX0"}]}}}}]}
execute if score $time gene_timer matches 20 run scoreboard players set $time gene_timer 250
execute as @e[tag=gene] at @s store result score @s gene_rotation run data get entity @s DisabledSlots:2039583,Pose.Head[0] 100
execute if score $time gene_timer matches 200..299 run scoreboard players add @e[tag=gene] gene_rotation 51
execute if score $time gene_timer matches 300..399 run scoreboard players remove @e[tag=gene] gene_rotation 51
execute if score $time gene_timer matches 400 run scoreboard players set $time gene_timer 200
execute as @e[tag=gene] at @s store result entity @s DisabledSlots:2039583,Pose.Head[0] float 0.01 run scoreboard players get @s gene_rotation
