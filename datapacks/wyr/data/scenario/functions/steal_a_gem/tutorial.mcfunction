##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=rab] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=rab_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=rab] run schedule function scenario:steal_a_gem/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] run title @a[team=rab,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Steal gems\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] run title @a[team=rab,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=75}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Steal gems\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=75}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

# Lookout zombie
execute as @e[tag=rab_lookout,tag=rab_lookout_1,type=zombie,tag=rab_ai_on_start] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=rab_lookout,tag=rab_lookout_1,type=zombie,tag=rab_ai_on_start] at @s run tag @s remove rab_ai_on_start
execute as @e[tag=rab_lookout,tag=rab_lookout_1,type=zombie,tag=rab_move_z,tag=!rab_stop_movement] at @s run data merge entity @s {Motion:[0.0d,0.0d,0.25d],Rotation:[0.0f,0.0f]}
execute as @e[tag=rab_lookout,tag=rab_lookout_1,type=zombie,tag=!rab_move_z,tag=!rab_stop_movement] at @s run data merge entity @s {Motion:[0.0d,0.0d,-0.25d],Rotation:[180.0f,0.0f]}

execute as @e[tag=rab_lookout,tag=rab_lookout_1,type=zombie] at @s at @s[z=-396,distance=..1] run tag @s add rab_move_z
execute as @e[tag=rab_lookout,tag=rab_lookout_1,type=zombie] at @s at @s[z=-368,distance=..1] run tag @s remove rab_move_z


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=90}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Avoid holding your sword near guards.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=90}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=150}] run tp @e[type=armor_stand,tag=rab_tutorial] 15936.0 75 -381 -90 90
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=150}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Don't get too close to any patrolling guards.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=150}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] run bossbar set steal_a_gem:suspicion visible true
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] run tp @e[type=armor_stand,tag=rab_tutorial] 15934 72 -368 -70 10
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If guards become too suspicious of you, they will attack. You can see their suspicion level in the boss bar.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=320}] run tp @e[type=armor_stand,tag=rab_tutorial] 15953 79.5 -381 -90 30
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=320}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Loot offices and cubicles for enough smaller gems to win.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=320}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=380}] run tp @e[type=armor_stand,tag=rab_tutorial] 15942 71 -381 90 5
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=380}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Alternatively, reach the elevator in the back to go to the vault and take the largest, most valuable gem.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=380}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=460}] run tp @e[type=armor_stand,tag=rab_tutorial] 15938 64 -381 -90 15
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=460}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Once the vault is open, the alarm will trigger, and the guards will become aggressive.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=460}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=540}] run tp @e[type=armor_stand,tag=rab_tutorial] 15968 72 -389 -60 15
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=540}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Once you have enough smaller gems or the largest gem from the vault, get back to the truck before the driver leaves without you.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=540}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=640}] run tp @e[type=armor_stand,tag=rab_tutorial] 15989 67 -388 -10 10
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=640}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Enter the back of the truck to drop off smaller gems and contribute towards the required amount, or the largest gem to reach the amount immediately.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=640}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=740}] run tp @e[type=armor_stand,tag=rab_tutorial] 16005 73 -380 80 25
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=740}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Once the required amount is reached, any player who enters the back of the truck before time runs out will win.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=740}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2



##
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=840}] run function scenario:steal_a_gem/tutorial_end


##Effects:

#execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580..659}] run scoreboard players set $tutorial rab_timer 100
#execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580..659}] positioned 15931 70 -25 rotated -15 0 run function scenario:steal_a_gem/tutorial_tracker