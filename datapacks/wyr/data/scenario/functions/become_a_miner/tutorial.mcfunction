##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=bam] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=bam_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=bam] run schedule function scenario:become_a_miner/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5}] run title @a[team=bam,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Become a miner\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5}] run title @a[team=bam,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=75}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Become a miner\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=75}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=90}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"After riding the elevator down to the mineshaft, make your way to a diamond ore.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=90}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25


execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=170}] run tp @e[type=armor_stand,tag=bam_tutorial] 8836 147 -25 -35 35
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=170}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Use your fragile Fortune III pickaxe to break the diamond ore.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=170}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=270}] run tp @e[type=armor_stand,tag=bam_tutorial] 8843 136 12 -35 5
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=270}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Obtain at least three diamonds to win the scenario. Pick your ore carefully!","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=270}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=330}] run tp @e[type=armor_stand,tag=bam_tutorial] 8849 134.5 -28 140 1
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=330}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Once all diamond ores have broken or everyone has mined their ore, the timer will lower to five seconds. Anyone without the required diamonds will lose.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=330}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=450}] run function scenario:become_a_miner/tutorial_end


##Effects:
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=90..169}] run scoreboard players set $tutorial bam_timer 110