##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=bam_old] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=bam_old_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old] run schedule function scenario:become_a_miner_old/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=5}] run title @a[team=bam_old,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Become a miner [CLASSIC]\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=5}] run title @a[team=bam_old,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=5}] as @a[team=bam_old,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=5}] as @a[team=bam_old,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=75}] run tellraw @a[team=bam_old,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Become a miner [CLASSIC]\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=75}] as @a[team=bam_old,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=90}] run tellraw @a[team=bam_old,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"After riding the elevator down to the mineshaft, follow the particles to the diamond ore.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=90}] as @a[team=bam_old,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25


execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=170}] run tp @e[type=armor_stand,tag=bam_old_tutorial] 9019 71 30 -45 5
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=170}] run tellraw @a[team=bam_old,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Use a Fortune III pickaxe to break the diamond ore. Whoever breaks it will instantly receive the diamonds.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=170}] as @a[team=bam_old,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=270}] run tp @e[type=armor_stand,tag=bam_old_tutorial] 8998 78 -13 -45 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=270}] run tellraw @a[team=bam_old,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Obtain seven diamonds to win the scenario.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=270}] as @a[team=bam_old,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=330}] run tp @e[type=armor_stand,tag=bam_old_tutorial] 9002 71 37 112.5 -10
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=330}] run tellraw @a[team=bam_old,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Once all diamond ores have broken, the timer will lower to five seconds. Anyone without the required diamonds will lose.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=330}] as @a[team=bam_old,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=450}] run function scenario:become_a_miner_old/tutorial_end


##Effects:
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=90..169}] run scoreboard players set $tutorial bam_old_timer 110
execute if entity @a[tag=in_tutorial,tag=playing,team=bam_old,scores={tutorial=90..169}] positioned 9028 70 -1 rotated 90 5 run function scenario:become_a_miner_old/tutorial_tracker