scoreboard players add $time gene_timer 1
execute if score $time gene_timer matches 10 run kill @e[tag=gene]
execute if score $time gene_timer matches 20 run summon armor_stand -935 71 5 {Invulnerable:1b,NoGravity:0b,DisabledSlots:2039583,Pose:{RightArm:[-150.0f,3.0f,0.0f],Body:[0.0f,0.0f,0.0f],LeftArm:[-170.0f,-10.0f,0.0f],Head:[-35.0f,-15.0f,0.0f],RightLeg:[-5.0f,10.0f,0.0f],LeftLeg:[0.0f,-15.0f,-8.0f]},Rotation:[182.0f,0.0f],Tags:["gene"],NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15198183}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2302755}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id: [I; 172890742, 2097103717, -2142657588, -932936961],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlmYzEyMmE4NzkwODM4YWRiNDE0ZDdjOGI4NWIyODRiMGZlM2ZjN2U4OTA2YTIzMjNmZmNjZjI1OGMzNGIwZSJ9fX0"}]}}}}]}

execute if score $time gene_timer matches 120..128 as @e[tag=gene] at @s run tp @s ~ ~.6 ~
execute if score $time gene_timer matches 128 as @e[tag=gene] at @s run data merge entity @s {Motion:[0.0d,0.8d,0.0d],DisabledSlots:2039583,Pose:{RightArm:[-100.0f,30.0f,0.0f],LeftArm:[-110.0f,-30.0f,5.0f],Head:[0.0f,0.0f,0.0f]}}


execute if score $time gene_timer matches 155 run scoreboard players set $time gene_timer 300
execute if score $time gene_timer matches 250..349 as @e[tag=gene] at @s store result score @s gene_rotation run data get entity @s Rotation[0] 100
execute if score $time gene_timer matches 250..349 run scoreboard players add @e[tag=gene] gene_rotation 80
execute if score $time gene_timer matches 250..349 as @e[tag=gene] at @s store result entity @s Rotation[0] float 0.01 run scoreboard players get @s gene_rotation
execute if score $time gene_timer matches 350..450 as @e[tag=gene] at @s store result score @s gene_rotation run data get entity @s Rotation[0] 100
execute if score $time gene_timer matches 350..450 run scoreboard players remove @e[tag=gene] gene_rotation 80
execute if score $time gene_timer matches 350..450 as @e[tag=gene] at @s store result entity @s Rotation[0] float 0.01 run scoreboard players get @s gene_rotation
execute if score $time gene_timer matches 450 run scoreboard players set $time gene_timer 249