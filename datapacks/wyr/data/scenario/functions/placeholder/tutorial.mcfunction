##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=placeholder] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=placeholder_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder] run schedule function scenario:placeholder/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=5}] run title @a[team=placeholder,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Placeholder Name\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=5}] run title @a[team=placeholder,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=5}] as @a[team=placeholder,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=5}] as @a[team=placeholder,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=75}] run tellraw @a[team=placeholder,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Placeholder Name\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=75}] as @a[team=placeholder,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=90}] run tp @e[type=armor_stand,tag=placeholder_tutorial] 999 67 -19 200 15
execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=90}] run tellraw @a[team=placeholder,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If two of these statistics hit zero, you will begin to die.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=90}] as @a[team=placeholder,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=placeholder,scores={tutorial=1000}] run function scenario:placeholder/tutorial_end


##Effects:
