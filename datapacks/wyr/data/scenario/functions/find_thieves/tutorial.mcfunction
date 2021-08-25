##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=ft] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=ft_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=ft] run schedule function scenario:find_thieves/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=5}] run title @a[team=ft,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Find thieves\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=5}] run title @a[team=ft,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=5}] as @a[team=ft,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=5}] as @a[team=ft,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=75}] run tellraw @a[team=ft,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Find thieves\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=75}] as @a[team=ft,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=90}] run tellraw @a[team=ft,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"A player head will appear in your inventory. The head shows the thief.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=90}] as @a[team=ft,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=180}] run tp @e[type=armor_stand,tag=ft_tutorial] 31993 67.5 -23 180 10
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=180}] run tellraw @a[team=ft,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"For a better view of the head, drop the player head. It will temporarily appear in front of you.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=180}] as @a[team=ft,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=290}] run tp @e[type=armor_stand,tag=ft_tutorial] 32016 68 -37 0 15
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=290}] run tellraw @a[team=ft,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Match that player head to a townsperson somewhere in the map.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=290}] as @a[team=ft,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=360}] run tp @e[type=armor_stand,tag=ft_tutorial] 32018 67.5 -33 0 0
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=360}] run tellraw @a[team=ft,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Punch that person to identify them as the thief.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=360}] as @a[team=ft,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=430}] run tp @e[type=armor_stand,tag=ft_tutorial] 31991 69 -21 -75 5
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=430}] run tellraw @a[team=ft,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Complete this process three times before time runs out to beat the scenario.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=430}] as @a[team=ft,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=520}] run function scenario:find_thieves/tutorial_end


##Effects:

execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=180}] run summon armor_stand 31993 66 -26 {Tags:["ft_die","ft_head_display"],Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,NoBasePlate:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-160963170,80168786,-1404730481,-643729061],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTEwYTcyNDg0ODNkMmFhOTY0N2YxZjVjMmNhYjRmMDlhMDlhOWZkNTUxYjdiN2MyNmZlYTFjMTgzNWFhNTdjZSJ9fX0="}]}}}}]}
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=180..269}] run function scenario:find_thieves/active_head_display
execute if entity @a[tag=in_tutorial,tag=playing,team=ft,scores={tutorial=270}] run function scenario:find_thieves/summon_tutorial_townspeople