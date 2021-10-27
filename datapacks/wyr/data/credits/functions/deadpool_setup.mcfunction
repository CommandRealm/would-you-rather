kill @e[tag=deadpool]
summon minecraft:armor_stand -925 80 -111 {Tags:["credits","deadpool","show_details"],NoBasePlate:1,ShowArms:1,Rotation:[112.5f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-928506895,1413169295,-1939866796,-1930700328],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDJhN2FlYmI1MzNlMWQwZTcwY2I1ZjgzNmIxNjAwZWI2NGZjNTI5NTg0Y2Q4OWYwOWM0ZGZlYjIxZWEzOWNkMSJ9fX0="}]}}}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
##scoreboard objectives add DArm dummy
##scoreboard players add @e[tag=deadpool] DArmD 0
##scoreboard players set @e[scores={DArmD=0},tag=deadpool] DArmD 1
data merge entity @e[tag=deadpool,limit=1] {Pose:{RightArm:[-20.20f,80.0f,75.0f],LeftArm:[-35.0f,-70.0f,-70.0f],Head:[-40.0f,0.0f,0.0f]}}
item replace entity @e[tag=deadpool] armor.feet with leather_boots{display:{color:3021338}}
item replace entity @e[tag=deadpool] armor.chest with leather_chestplate{display:{color:9276813}}
item replace entity @e[tag=deadpool] armor.legs with leather_leggings{display:{color:13290186}}