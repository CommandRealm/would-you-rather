##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=wat] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=wat_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=wat] run schedule function scenario:walk_a_tightrope/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=5}] run title @a[team=wat,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Walk a tightrope\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=5}] run title @a[team=wat,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=5}] as @a[team=wat,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=5}] as @a[team=wat,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=75}] run tellraw @a[team=wat,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Walk a tightrope\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=75}] as @a[team=wat,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=90}] run tellraw @a[team=wat,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Walk and jump across the iron bars..","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=90}] as @a[team=wat,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=160}] run tp @e[type=armor_stand,tag=wat_tutorial] 6954 86 7 -45 90
execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=160}] run tellraw @a[team=wat,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Falling will cause you to die.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=160}] as @a[team=wat,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=210}] run tp @e[type=armor_stand,tag=wat_tutorial] 6947 92 52 -112.5 0
execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=210}] run tellraw @a[team=wat,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Reach the end of the parkour course before time runs out to beat the scenario.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=210}] as @a[team=wat,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=wat,scores={tutorial=300}] run function scenario:walk_a_tightrope/tutorial_end


##Effects:
