kill @e[tag=deadpool]
summon minecraft:armor_stand -925 80 -111 {Tags:["credits","deadpool","show_details"],NoBasePlate:1,ShowArms:1,Rotation:[112.5f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Captain_Deadpool"}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
##scoreboard objectives add DArm dummy
##scoreboard players add @e[tag=deadpool] DArmD 0
##scoreboard players set @e[scores={DArmD=0},tag=deadpool] DArmD 1
data merge entity @e[tag=deadpool,limit=1] {Pose:{RightArm:[-20.20f,80.0f,75.0f],LeftArm:[-35.0f,-70.0f,-70.0f],Head:[-40.0f,0.0f,0.0f]}}
replaceitem entity @e[tag=deadpool] armor.feet leather_boots{display:{color:3021338}}
replaceitem entity @e[tag=deadpool] armor.chest leather_chestplate{display:{color:10560034}}
replaceitem entity @e[tag=deadpool] armor.legs leather_leggings{display:{color:6039335}}