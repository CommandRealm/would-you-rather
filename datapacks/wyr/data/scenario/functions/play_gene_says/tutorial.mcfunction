##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=pgs] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=pgs_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs] run schedule function scenario:play_gene_says/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=5}] run title @a[team=pgs,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Play 'Gene Says'\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=5}] run title @a[team=pgs,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=5}] as @a[team=pgs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=5}] as @a[team=pgs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=75}] run tellraw @a[team=pgs,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Play 'Gene Says'\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=75}] as @a[team=pgs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=90}] run tellraw @a[team=pgs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You will receive instructions on your screen.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=90}] as @a[team=pgs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=160}] run tp @e[type=armor_stand,tag=pgs_tutorial] 27032 68 -11 -90 40
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=160}] run tellraw @a[team=pgs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Obey Gene's commands.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=160}] as @a[team=pgs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=210}] run tp @e[type=armor_stand,tag=pgs_tutorial] 27025 67.5 -17 90 5
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=210}] run tellraw @a[team=pgs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If \"Gene says\" is not preceding an action, don't follow it.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=210}] as @a[team=pgs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=290}] run tp @e[type=armor_stand,tag=pgs_tutorial] 27033 67 -21 180 -5
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=290}] run tellraw @a[team=pgs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If you fail to finish an instruction or complete an incorrect action, you will fail.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=290}] as @a[team=pgs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=370}] run tp @e[type=armor_stand,tag=pgs_tutorial] 27036 68 -8 135 15
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=370}] run tellraw @a[team=pgs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Survive ten rounds to win the scenario.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=370}] as @a[team=pgs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2




##
execute if entity @a[tag=in_tutorial,tag=playing,team=pgs,scores={tutorial=430}] run function scenario:play_gene_says/tutorial_end


##Effects:
