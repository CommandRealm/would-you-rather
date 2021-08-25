##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=sitw] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=sitw_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw] run schedule function scenario:survive_in_the_wilderness/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=5}] run title @a[team=sitw,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Survive in the wilderness\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=5}] run title @a[team=sitw,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=5}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=5}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=75}] run tellraw @a[team=sitw,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Survive in the wilderness\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=75}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=90}] run tellraw @a[team=sitw,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You have three statistics, \"Warmth,\" \"Hunger,\" and \"Thirst.\" They appear in your action bar and will all slowly diminish as you play.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=90}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=210}] run tp @e[type=armor_stand,tag=sitw_tutorial] 999 67 -19 200 15
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=210}] run tellraw @a[team=sitw,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If two of these statistics hit zero, you will begin to die.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=210}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25


execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=290}] run tp @e[type=armor_stand,tag=sitw_tutorial] 993 67.5 -2 63.5 20
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=290}] run tellraw @a[team=sitw,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Sticks appear randomly across the ground. Drop them on the campfire to extend the flame.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=290}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=390}] run bossbar set survive_in_the_wilderness:campfire players @a[team=sitw]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=390}] run tp @e[type=armor_stand,tag=sitw_tutorial] 1001 69 -9 -45 40
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=390}] run tellraw @a[team=sitw,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You can see how much time the campfire has before extinguishing on the boss bar.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=390}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=490}] run tellraw @a[team=sitw,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If you lose your campfire, your statistics will start dropping faster.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=490}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=590}] run tp @e[type=armor_stand,tag=sitw_tutorial] 1027 76 -28 180 90
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=590}] run tellraw @a[team=sitw,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Water appears in two of the map's corners. You can find other items around the map to either help your statistics fall slower or boost them.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=590}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=730}] run tp @e[type=armor_stand,tag=sitw_tutorial] 1008 76 -16 25 50
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=730}] run tellraw @a[team=sitw,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You succeed once the timer reaches zero.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=730}] as @a[team=sitw,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=sitw,scores={tutorial=810}] run function scenario:survive_in_the_wilderness/tutorial_end


##
##Effects:
execute as @a[tag=playing,team=sitw] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @s ~ ~ ~ 0.025 2

