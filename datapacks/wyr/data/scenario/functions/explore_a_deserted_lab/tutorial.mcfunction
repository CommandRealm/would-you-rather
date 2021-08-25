##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=eadl] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=eadl_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl] run schedule function scenario:explore_a_deserted_lab/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5}] run title @a[team=eadl,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Explore a deserted lab\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5}] run title @a[team=eadl,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=75}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Explore a deserted lab\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=75}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=90}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Three redstone components will appear in the lab.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=90}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=160}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8014 58.0 37 0 90
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=160}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The frequency of the beeping noises will tell you that you're getting closer to a component.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=160}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=270}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8014 54.0 37 0 0
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=270}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Every player's goal is to gather all three and return to the ship before time runs out.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=270}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=380}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8029 54 13 90 20
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=380}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The water is cold! Going swimming will slowly start dealing damage.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=380}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=440}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8042 55.25 9 -90 20
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=440}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"There are skulls everywhere in the lab.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=440}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=490}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8040 57.5 9 -90 80
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=490}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Sometimes, these skulls will turn out to be actual wither skeletons.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=490}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=540}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8040 56.5 9 90 40
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=540}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You can't hurt these creatures, so it's best just to run.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=540}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=590}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8027 59 9 -90 30
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=590}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The skeletons can't leave the lab.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=590}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=640}] run function scenario:explore_a_deserted_lab/tutorial_end


##Effects:
