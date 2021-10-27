##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=giant] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=giant_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=giant] run schedule function scenario:feed_a_giant/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=5}] run title @a[team=giant,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Feed a giant\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=5}] run title @a[team=giant,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=5}] as @a[team=giant,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=5}] as @a[team=giant,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=75}] run tellraw @a[team=giant,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Feed a giant\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=75}] as @a[team=giant,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=90}] run tellraw @a[team=giant,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The giant needs three different foods to stifle its hunger. Each food has a corresponding parkour course.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=90}] as @a[team=giant,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=210}] run tp @e[type=armor_stand,tag=giant_tutorial] 12979 72 8 66.5 -15
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=210}] run tellraw @a[team=giant,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"These courses are color coded for each food. For example, \"","color":"gray"},{"text":"Cake","color":"light_purple","bold":true},{"text":"\" would correspond to the pink course.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=210}] as @a[team=giant,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=350}] run tp @e[type=armor_stand,tag=giant_tutorial] 13015 73 -6 -90 0
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=350}] run tellraw @a[team=giant,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The start of each course is indicated by a glass case.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=350}] as @a[team=giant,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=430}] run tp @e[type=armor_stand,tag=giant_tutorial] 12999 86 15 0 10
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=430}] run tellraw @a[team=giant,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Bring the three pieces of food back to the giant before time runs out to win!","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=430}] as @a[team=giant,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=giant,scores={tutorial=550}] run function scenario:feed_a_giant/tutorial_end


##Effects:
