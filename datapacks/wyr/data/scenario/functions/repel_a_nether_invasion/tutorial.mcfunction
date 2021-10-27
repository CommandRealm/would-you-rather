##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=rani] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=rani_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=rani] run schedule function scenario:repel_a_nether_invasion/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=5}] run title @a[team=rani,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Repel a nether invasion\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=5}] run title @a[team=rani,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=5}] as @a[team=rani,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=5}] as @a[team=rani,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=75}] run tellraw @a[team=rani,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Repel a nether invasion\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=75}] as @a[team=rani,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

# execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=90}] run tp @e[type=armor_stand,tag=rani_tutorial] 999 67 -19 200 15
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=90}] run tellraw @a[team=rani,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You must kill fifteen mobs from the Nether.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=90}] as @a[team=rani,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=170}] run tp @e[type=armor_stand,tag=rani_tutorial] 9972 69 11 90 0
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=170}] run tellraw @a[team=rani,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The mobs will become stronger over time.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=170}] as @a[team=rani,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=250}] run tp @e[type=armor_stand,tag=rani_tutorial] 10005 72 42 -115 5
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=250}] run tellraw @a[team=rani,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Use your three golden apples and three healing potions to help stay alive.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=250}] as @a[team=rani,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=350}] run tp @e[type=armor_stand,tag=rani_tutorial] 10026 77 -18 255 50
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=350}] run tellraw @a[team=rani,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If you die, you join the enemy team and can help kill other players.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=350}] as @a[team=rani,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=450}] run tp @e[type=armor_stand,tag=rani_tutorial] 10030 72 29 -39.75 15
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=450}] run tellraw @a[team=rani,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Otherwise, once you have fifteen kills, escape through one of the tunnels (found near the beacons) to win!","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=450}] as @a[team=rani,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=rani,scores={tutorial=570}] run function scenario:repel_a_nether_invasion/tutorial_end


##Effects:
