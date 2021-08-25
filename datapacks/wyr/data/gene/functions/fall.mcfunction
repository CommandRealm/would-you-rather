scoreboard players add $time gene_timer 1
execute if score $time gene_timer matches 10 run kill @e[tag=gene]
execute if score $time gene_timer matches 100 run summon armor_stand -935 108 5 {DisabledSlots:2039583,Pose:{RightArm:[-50.0f,0.0f,20.0f],Head:[15.0f,0.0f,0.0f],RightLeg:[10.0f,15.0f,15.0f],LeftLeg:[26.0f,5.0f,-18.0f]},Rotation:[-68.0f,0.0f],Tags:["gene","gene1"],NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15198183}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id: [I; 172890742, 2097103717, -2142657588, -932936961],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlmYzEyMmE4NzkwODM4YWRiNDE0ZDdjOGI4NWIyODRiMGZlM2ZjN2U4OTA2YTIzMjNmZmNjZjI1OGMzNGIwZSJ9fX0"}]}}}}]}
execute if score $time gene_timer matches ..130 as @e[tag=gene] at @s store result score @s gene_rotation run data get entity @s Rotation[0] 100
execute if score $time gene_timer matches ..130 run scoreboard players add @e[tag=gene] gene_rotation 800
execute if score $time gene_timer matches ..130 as @e[tag=gene] at @s store result entity @s Rotation[0] float 0.01 run scoreboard players get @s gene_rotation
execute if score $time gene_timer matches 140 run scoreboard players set $time gene_timer 200
execute if score $time gene_timer matches 150..249 as @e[tag=gene] at @s store result score @s gene_rotation run data get entity @s Rotation[0] 100
execute if score $time gene_timer matches 150..249 run scoreboard players add @e[tag=gene] gene_rotation 80
execute if score $time gene_timer matches 150..249 as @e[tag=gene] at @s store result entity @s Rotation[0] float 0.01 run scoreboard players get @s gene_rotation
execute if score $time gene_timer matches 250..350 as @e[tag=gene] at @s store result score @s gene_rotation run data get entity @s Rotation[0] 100
execute if score $time gene_timer matches 250..350 run scoreboard players remove @e[tag=gene] gene_rotation 80
execute if score $time gene_timer matches 250..350 as @e[tag=gene] at @s store result entity @s Rotation[0] float 0.01 run scoreboard players get @s gene_rotation
execute if score $time gene_timer matches 350 run scoreboard players set $time gene_timer 149