##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=hcm] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=hcm_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm] run schedule function scenario:hunt_cave_monsters/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=5}] run title @a[team=hcm,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Hunt cave monsters\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=5}] run title @a[team=hcm,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=5}] as @a[team=hcm,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=5}] as @a[team=hcm,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=75}] run tellraw @a[team=hcm,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Hunt cave monsters\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=75}] as @a[team=hcm,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=90}] run tellraw @a[team=hcm,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Shoot the flying mobs with your bow and arrow.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=90}] as @a[team=hcm,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=150}] run tp @e[type=armor_stand,tag=hcm_tutorial] 18985 69 29 -90 0
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=150}] run tellraw @a[team=hcm,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You have limited arrows. However, you will receive another one shortly after shooting your bow.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=150}] as @a[team=hcm,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=230}] run tp @e[type=armor_stand,tag=hcm_tutorial] 19005 80 36 60 40
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=230}] run tellraw @a[team=hcm,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Every mob you kill will give you points. You can gain more points by killing harder-to-hit mobs.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=230}] as @a[team=hcm,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=330}] run tp @e[type=armor_stand,tag=hcm_tutorial] 19002 90 29 180 90
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=330}] run tellraw @a[team=hcm,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Reach 25 points before time runs out to win.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=330}] as @a[team=hcm,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=hcm,scores={tutorial=390}] run function scenario:hunt_cave_monsters/tutorial_end


##Effects:
