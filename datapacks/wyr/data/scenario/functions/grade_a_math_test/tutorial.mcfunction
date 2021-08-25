##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=gamt] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=gamt_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt] run schedule function scenario:grade_a_math_test/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=5}] run title @a[team=gamt,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Grade a math test\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=5}] run title @a[team=gamt,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=5}] as @a[team=gamt,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=5}] as @a[team=gamt,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=75}] run tellraw @a[team=gamt,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Grade a math test\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=75}] as @a[team=gamt,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=90}] run tellraw @a[team=gamt,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Math questions will appear on your screen.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=90}] as @a[team=gamt,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=150}] run tp @e[type=armor_stand,tag=gamt_tutorial] 1976 70 6 -120 20
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=150}] run tellraw @a[team=gamt,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You will have a couple of seconds to answer. Drop the green wool to answer \"True\" or the red wool to answer \"False.\"","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=150}] as @a[team=gamt,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=250}] run tp @e[type=armor_stand,tag=gamt_tutorial] 1992 70 2.0 90 10
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=250}] run tellraw @a[team=gamt,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Answer ten questions correctly to win. Two incorrect answers or non-answers will cause you to fail.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=250}] as @a[team=gamt,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=gamt,scores={tutorial=350}] run function scenario:grade_a_math_test/tutorial_end


##Effects:
