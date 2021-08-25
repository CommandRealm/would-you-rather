##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=rab] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=rab_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=rab] run schedule function scenario:steal_a_gem/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] run title @a[team=rab,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Steal a gem\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] run title @a[team=rab,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=75}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Steal a gem\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=75}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=90}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Avoid holding your sword near guards.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=90}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=150}] run tp @e[type=armor_stand,tag=rab_tutorial] 15936.0 75 0 -90 90
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=150}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Avoid any patrolling guards.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=150}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] run bossbar set steal_a_gem:suspicion visible true
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] run tp @e[type=armor_stand,tag=rab_tutorial] 15934 72 13 -70 10
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"If guards become too suspicious of you, they will attack. You can check the suspicion level in the boss bar.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=320}] run tp @e[type=armor_stand,tag=rab_tutorial] 15954 80.5 -13 90 90
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=320}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Loot offices and cubicles for items.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=320}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=380}] run tp @e[type=armor_stand,tag=rab_tutorial] 15929 71 0 90 0
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=380}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"After getting loot, reach the elevator in the back to go to the vault.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=380}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=460}] run tp @e[type=armor_stand,tag=rab_tutorial] 15948 64 0 -90 15
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=460}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Take the gem from the vault. Once the vault is open, the alarm will trigger, and the guards will become aggressive.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=460}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580}] run tp @e[type=armor_stand,tag=rab_tutorial] 15939 71 1 162 0
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Get back upstairs and follow the particle tracker to your truck.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=660}] run tp @e[type=armor_stand,tag=rab_tutorial] 15927 71 -23 -80 5
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=660}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"The back of the truck will open soon after the gem is near it.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=660}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=740}] run tp @e[type=armor_stand,tag=rab_tutorial] 15931 72 -24 180 0
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=740}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Once the gem is in the truck, any player who reaches it before time runs out will win.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=740}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2



##
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=840}] run function scenario:steal_a_gem/tutorial_end


##Effects:

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580..659}] run scoreboard players set $tutorial rab_timer 100
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580..659}] positioned 15931 70 -25 rotated -15 0 run function scenario:steal_a_gem/tutorial_tracker