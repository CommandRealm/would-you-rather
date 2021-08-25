##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=ptp] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=ptp_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp] run schedule function scenario:play_the_piano/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=5}] run title @a[team=ptp,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Play the piano\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=5}] run title @a[team=ptp,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=5}] as @a[team=ptp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=5}] as @a[team=ptp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=75}] run tellraw @a[team=ptp,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Play the piano\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=75}] as @a[team=ptp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=90}] run tellraw @a[team=ptp,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"A note will appear on the piano.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=90}] as @a[team=ptp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25


execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=150}] run tp @e[type=armor_stand,tag=ptp_tutorial] 33018 68.5 5 180 5
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=150}] run tellraw @a[team=ptp,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"After it has played, you will have a short time to drop that note from your inventory.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=150}] as @a[team=ptp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=230}] run tp @e[type=armor_stand,tag=ptp_tutorial] 33021 67 14 160 -10
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=230}] run tellraw @a[team=ptp,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The sequence will then have one note added, and this process repeats until there are six notes.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=230}] as @a[team=ptp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=330}] run tp @e[type=armor_stand,tag=ptp_tutorial] 33016 70 3 20 30
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=330}] run tellraw @a[team=ptp,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If you misplay a note, you will lose.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=330}] as @a[team=ptp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=390}] run tp @e[type=armor_stand,tag=ptp_tutorial] 33013 70 7 -140 20
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=390}] run tellraw @a[team=ptp,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Repeat the six-note melody to win the scenario.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=390}] as @a[team=ptp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=450}] run function scenario:play_the_piano/tutorial_end


##Effects:


execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=120}] run playsound minecraft:block.note_block.harp master @a 33015 68 2 100 0.793701
execute if entity @a[tag=in_tutorial,tag=playing,team=ptp,scores={tutorial=120}] run particle note 33015 68.75 2 0.3333333 0 0 1 0 force @a