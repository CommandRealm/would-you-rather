kill @e[tag=typs]

summon minecraft:armor_stand -944 80 -117 {Tags:["credits","typs","show_details"],NoBasePlate:1,ShowArms:1,Rotation:[237.5f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-778369713,2045988351,-1386590053,1625659128],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDI3Njk1YWZlZDhiMzI0N2VjYTVhYzBkZTEyZjNkYTBiMmFmOWMxNjg4NTk5MThkODA0NDA5MzYwMTczMDJjNiJ9fX0="}]}}}}],Pose:{RightArm:[210.0f,99.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[210.0f,271.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[-10.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
scoreboard objectives add typs_direction dummy
scoreboard players add $direction typs_direction 0

data merge entity @e[tag=typs,limit=1] {Pose:{RightArm:[153.0f,-34.0f,55.0f],LeftArm:[0.0f,0.0f,0.0f]}}

replaceitem entity @e[tag=typs] armor.feet leather_boots{display:{color:5191726}}
replaceitem entity @e[tag=typs] armor.chest leather_chestplate{display:{color:3782703}}
replaceitem entity @e[tag=typs] armor.legs netherite_leggings