##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=skydive] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=skydive_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive] run schedule function scenario:skydive/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=5}] run title @a[team=skydive,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Go skydiving\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=5}] run title @a[team=skydive,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=5}] as @a[team=skydive,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=5}] as @a[team=skydive,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=75}] run tellraw @a[team=skydive,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Go skydiving\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=75}] as @a[team=skydive,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

# execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=90}] run tp @e[type=armor_stand,tag=skydive_tutorial] 999 67 -19 200 15
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=90}] run tellraw @a[team=skydive,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Jump out of the plane and avoid taking fall damage using things like water, slime blocks, scaffolding, and more.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=90}] as @a[team=skydive,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=250}] run tp @e[type=armor_stand,tag=skydive_tutorial] 20052 38 -25 -45 5
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=250}] run tellraw @a[team=skydive,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You must complete five randomized levels with each level increasing in difficulty.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=250}] as @a[team=skydive,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=350}] run tp @e[type=armor_stand,tag=skydive_tutorial] 20067.0 82 -10.0 90 90
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=350}] run tellraw @a[team=skydive,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You must complete all five levels in a row without dying.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=350}] as @a[team=skydive,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=skydive,scores={tutorial=470}] run function scenario:skydive/tutorial_end


##Effects:
