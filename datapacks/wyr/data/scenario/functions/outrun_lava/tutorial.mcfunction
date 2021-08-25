##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=ol] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=ol_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=ol] run schedule function scenario:outrun_lava/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=5}] run title @a[team=ol,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Outrun lava\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=5}] run title @a[team=ol,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=5}] as @a[team=ol,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=5}] as @a[team=ol,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=75}] run tellraw @a[team=ol,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Outrun lava\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=75}] as @a[team=ol,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=90}] run tellraw @a[team=ol,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You will start here. Begin running towards the cave's exit as soon as possible.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=90}] as @a[team=ol,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=180}] run tp @e[type=armor_stand,tag=ol_tutorial] 23995 74 -69 -12.5 15
execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=180}] run tellraw @a[team=ol,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Lava will start horizontally coming out from the cave.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=180}] as @a[team=ol,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=250}] run tp @e[type=armor_stand,tag=ol_tutorial] 24000 82 -114 180 12.5
execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=250}] run tellraw @a[team=ol,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Reach the bunker alive to beat the scenario.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=250}] as @a[team=ol,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=ol,scores={tutorial=320}] run function scenario:outrun_lava/tutorial_end


##Effects:
