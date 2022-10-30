##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=dab] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=dab_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=dab] run schedule function scenario:defuse_tnt/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5}] run title @a[team=dab,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Defuse TNT\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5}] run title @a[team=dab,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=75}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Defuse TNT\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=75}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=90}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"A predetermined three-color code with no duplicates generates at the start of this scenario.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=90}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=150}] run tp @e[type=armor_stand,tag=dab_tutorial] 25991 79 5 90 68
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=150}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"To guess the code, place down the blocks in your inventory on the gray concrete powder. ","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=150}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250}] run tp @e[type=armor_stand,tag=dab_tutorial] 25994 78 5 90 0
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"After your guess, three (randomly ordered) colored particles will appear that give you clues to the code. These are explained in chat.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=330}] run tp @e[type=armor_stand,tag=dab_tutorial] 25987 79 5 -90 20
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=330}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If you get green, it means that one of the colors you guessed is in the code and in the position you guessed it in.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=330}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=470}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"A dark blue particle signifies that one of the colors you guessed is in the code but not in the position you put it in.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=470}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=610}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"A red particle symbolizes that one of the colors you guessed is not in the code at all.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=610}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710}] run tp @e[type=armor_stand,tag=dab_tutorial] 25981 79 12 180 0
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You have seven guesses. Make sure to determine the code correctly before running out of guesses and before the timer reaches zero.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25


##Remember to alternate message colors between gray and #e2e2e2



#
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=830}] run function scenario:defuse_tnt/tutorial_end


##Effects:

#place blocks
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=170}] run setblock 25990 77 6 minecraft:lime_concrete
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=170}] run playsound minecraft:block.stone.place master @a 25990 77 6 1 1
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=180}] run setblock 25990 77 5 minecraft:purple_concrete
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=180}] run playsound minecraft:block.stone.place master @a 25990 77 5 1 1
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=190}] run setblock 25990 77 4 minecraft:red_concrete
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=190}] run playsound minecraft:block.stone.place master @a 25990 77 4 1 1


#green
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250..709}] run particle dust 0 1 0 1 25989 79.5 5.5 0 0 0 0 1 force @a
#blue
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250..709}] run particle dust 0.25 0.25 1 1 25989 79.0 5.5 0 0 0 0 1 force @a
#red
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250..709}] run particle dust 1 0 0 1 25989 78.5 5.5 0 0 0 0 1 force @a

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710..831}] run particle dust 1 0 0 1 25989 79.5 5.5 0 0 0 0 1 force @a

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710..831}] run particle dust 1 0 0 1 25989 79.0 5.5 0 0 0 0 1 force @a