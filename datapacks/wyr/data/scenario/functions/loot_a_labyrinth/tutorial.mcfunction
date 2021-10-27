##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=labyrinth] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=labyrinth_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth] run schedule function scenario:loot_a_labyrinth/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=5}] run title @a[team=labyrinth,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Loot a labyrinth\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=5}] run title @a[team=labyrinth,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=5}] as @a[team=labyrinth,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=5}] as @a[team=labyrinth,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=75}] run tellraw @a[team=labyrinth,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Loot a labyrinth\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=75}] as @a[team=labyrinth,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

# execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=90}] run tp @e[type=armor_stand,tag=labyrinth_tutorial] 999 67 -19 200 15
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=90}] run tellraw @a[team=labyrinth,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The labyrinth will randomly generate a layout within a square.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=90}] as @a[team=labyrinth,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=170}] run tp @e[type=armor_stand,tag=labyrinth_tutorial] 14086 4 14079 90 30
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=170}] run tellraw @a[team=labyrinth,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Your goal is to find five different treasures hidden within the maze.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=170}] as @a[team=labyrinth,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=270}] run tellraw @a[team=labyrinth,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Treasures that you’ve already found will sparkle with red particles.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=270}] as @a[team=labyrinth,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=350}] run tp @e[type=armor_stand,tag=labyrinth_tutorial] 14032 20 14032 0 90
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=350}] run tellraw @a[team=labyrinth,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Once you’ve found at least five treasures, return to the beacon in the center of the map to win!","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=350}] as @a[team=labyrinth,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=490}] run function scenario:loot_a_labyrinth/tutorial_end


##Effects:
execute if entity @a[tag=in_tutorial,tag=playing,team=labyrinth,scores={tutorial=270..350}] as @e[type=item,x=14083,y=3,z=14079,distance=..5] at @s run particle dust 1 0 0 1 ~ ~ ~ .5 1 .5 1 10 force @a


