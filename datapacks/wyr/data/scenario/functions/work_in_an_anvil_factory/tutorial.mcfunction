##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=wiaaf] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=wiaaf_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf] run schedule function scenario:work_in_an_anvil_factory/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=5}] run title @a[team=wiaaf,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Work in an anvil factory\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=5}] run title @a[team=wiaaf,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=5}] as @a[team=wiaaf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=5}] as @a[team=wiaaf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=75}] run tellraw @a[team=wiaaf,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Work in an anvil factory\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=75}] as @a[team=wiaaf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=90}] run tellraw @a[team=wiaaf,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Anvils will come crashing down from above.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=90}] as @a[team=wiaaf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=150}] run tp @e[type=armor_stand,tag=wiaaf_tutorial] 17995 80 0 -90 60
execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=150}] run tellraw @a[team=wiaaf,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Run around and survive until the timer runs out.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=150}] as @a[team=wiaaf,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=wiaaf,scores={tutorial=210}] run function scenario:work_in_an_anvil_factory/tutorial_end


##Effects:
