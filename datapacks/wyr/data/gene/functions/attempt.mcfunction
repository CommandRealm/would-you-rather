scoreboard players add $time gene_timer 1
execute if score $time gene_timer matches 10 run kill @e[tag=gene]
execute if score $time gene_timer matches 20 run summon armor_stand -935 68 3 {NoGravity:0b,DisabledSlots:2039583,Pose:{RightArm:[-100.0f,70.0f,0.0f],Body:[-5.0f,0.0f,0.0f],LeftArm:[-120.0f,-40.0f,-10.0f],Head:[-35.0f,-15.0f,0.0f],RightLeg:[-5.0f,10.0f,0.0f],LeftLeg:[0.0f,-15.0f,-8.0f]},Rotation:[5.0f,0.0f],Tags:["gene"],NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15198183}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id: [I; 172890742, 2097103717, -2142657588, -932936961],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlmYzEyMmE4NzkwODM4YWRiNDE0ZDdjOGI4NWIyODRiMGZlM2ZjN2U4OTA2YTIzMjNmZmNjZjI1OGMzNGIwZSJ9fX0"}]}}}}]}

execute if score $time gene_timer matches 100 run scoreboard players set $time gene_timer 300
execute if score $time gene_timer matches 300 as @e[tag=gene] at @s run scoreboard players set @s gene_motion 7
execute if score $time gene_timer matches 300 as @e[tag=gene] at @s store result entity @s Motion[1] double 0.1 run scoreboard players get @s gene_motion
execute if score $time gene_timer matches 380 run scoreboard players set $time gene_timer 299
