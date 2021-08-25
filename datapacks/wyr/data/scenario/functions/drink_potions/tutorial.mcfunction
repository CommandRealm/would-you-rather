##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=ddp] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=ddp_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp] run schedule function scenario:drink_potions/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=5}] run title @a[team=ddp,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Drink dangerous potions\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=5}] run title @a[team=ddp,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=5}] as @a[team=ddp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=5}] as @a[team=ddp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=75}] run tellraw @a[team=ddp,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Drink dangerous potions\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=75}] as @a[team=ddp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=90}] run tellraw @a[team=ddp,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The witch presents you with potions.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=90}] as @a[team=ddp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=140}] run tp @e[type=armor_stand,tag=ddp_tutorial] 29982 69 -4 22.5 20
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=140}] run tellraw @a[team=ddp,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Half of them are poisonous.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=140}] as @a[team=ddp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=190}] run tp @e[type=armor_stand,tag=ddp_tutorial] 30003 69 0 90 0
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=190}] run tellraw @a[team=ddp,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Drink one within your turn of 30 seconds or die.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=190}] as @a[team=ddp,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=ddp,scores={tutorial=250}] run function scenario:drink_potions/tutorial_end


##Effects:
