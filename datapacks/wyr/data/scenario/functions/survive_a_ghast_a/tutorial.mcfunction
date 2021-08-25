##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=saga] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=saga_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=saga] run schedule function scenario:survive_a_ghast_a/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=5}] run title @a[team=saga,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Survive a ghast apocalypse\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=5}] run title @a[team=saga,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=5}] as @a[team=saga,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=5}] as @a[team=saga,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=75}] run tellraw @a[team=saga,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Survive a ghast apocalypse\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=75}] as @a[team=saga,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=90}] run tellraw @a[team=saga,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Ghasts appear on all sides and move back and forth.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=90}] as @a[team=saga,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=150}] run tp @e[type=armor_stand,tag=saga_tutorial] 3981 85 0 45 5
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=150}] run tellraw @a[team=saga,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"They shoot fireballs, which will light pillars on fire underneath them.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=150}] as @a[team=saga,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=210}] run tp @e[type=armor_stand,tag=saga_tutorial] 3969 86 0 90 10
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=210}] run tellraw @a[team=saga,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Make sure to listen for their screech. It is a warning before the ghast shoots.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=210}] as @a[team=saga,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=290}] run tp @e[type=armor_stand,tag=saga_tutorial] 3981 85 0 45 5
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=290}] run tellraw @a[team=saga,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Jump between the pillars and survive until the timer reaches zero.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=290}] as @a[team=saga,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=saga,scores={tutorial=350}] run function scenario:survive_a_ghast_a/tutorial_end


##Effects:
