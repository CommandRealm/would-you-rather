##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=arb] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=arb_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=arb] run schedule function scenario:avoid_radioactive_bats/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=5}] run title @a[team=arb,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Avoid radioactive bats\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=5}] run title @a[team=arb,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=5}] as @a[team=arb,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=5}] as @a[team=arb,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=75}] run tellraw @a[team=arb,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Avoid radioactive bats\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=75}] as @a[team=arb,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=90}] run tellraw @a[team=arb,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Bats will fly around and shoot down lasers.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=90}] as @a[team=arb,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=160}] run tp @e[type=armor_stand,tag=arb_tutorial] 14988 63 0 -90 10
execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=160}] run tellraw @a[team=arb,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The lasers will break blocks.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=160}] as @a[team=arb,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=210}] run tp @e[type=armor_stand,tag=arb_tutorial] 15000 67 0 90 90
execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=210}] run tellraw @a[team=arb,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Survive on the platform until time runs out.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=210}] as @a[team=arb,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=arb,scores={tutorial=260}] run function scenario:avoid_radioactive_bats/tutorial_end


##Effects:


execute as @e[type=bat,tag=arb_bat] at @s run function scenario:avoid_radioactive_bats/laser