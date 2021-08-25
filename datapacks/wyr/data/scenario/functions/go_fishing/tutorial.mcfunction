##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=gf] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=gf_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=gf] run schedule function scenario:go_fishing/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=5}] run title @a[team=gf,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Go fishing\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=5}] run title @a[team=gf,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=5}] as @a[team=gf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=5}] as @a[team=gf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=75}] run tellraw @a[team=gf,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Go fishing\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=75}] as @a[team=gf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=90}] run tellraw @a[team=gf,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Use your fishing rod to catch fish.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=90}] as @a[team=gf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=150}] run tp @e[type=armor_stand,tag=gf_tutorial] 35002 68 3 60 20
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=150}] run tellraw @a[team=gf,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Catching different fish will add varying amounts to your score.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=150}] as @a[team=gf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=210}] run tp @e[type=armor_stand,tag=gf_tutorial] 34987 70 10 -10 70
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=210}] run tellraw @a[team=gf,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Remember, you can only catch treasure when fishing in the open water.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=210}] as @a[team=gf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=290}] run tp @e[type=armor_stand,tag=gf_tutorial] 35000 71 -3 190 0
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=290}] run tellraw @a[team=gf,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You must reach 30 points before time runs out to win the scenario.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=290}] as @a[team=gf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2


##

execute if entity @a[tag=in_tutorial,tag=playing,team=gf,scores={tutorial=370}] run function scenario:go_fishing/tutorial_end


##Effects:
