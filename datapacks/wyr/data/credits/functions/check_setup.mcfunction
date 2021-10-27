kill @e[tag=check]
summon minecraft:armor_stand -945 80 -115 {Tags:["credits","check","show_details"],NoBasePlate:1,ShowArms:1,Rotation:[90.0f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"CheckMC"}}],Pose:{RightArm:[210.0f,99.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[210.0f,271.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[-10.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}


##data merge entity @e[tag=check,limit=1] {Pose:{RightArm:[-120.0f,40.0f,55.0f],LeftArm:[-70.0f,-50.0f,0.0f]}}

item replace entity @e[tag=check] armor.feet with leather_boots{display:{color:16777215}}
item replace entity @e[tag=check] armor.chest with leather_chestplate{display:{color:7241373}}
item replace entity @e[tag=check] armor.legs with leather_leggings{display:{color:12563846}}