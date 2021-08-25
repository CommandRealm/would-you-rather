#called from general:main
#purpose is to run commands throughout the entirety of the game



execute store result score $players state if entity @a[tag=playing]
execute if score $players state matches ..1 unless entity @a[tag=admin] run function end:insufficient_players

execute if score $clap clap matches 1.. run function game:clap

execute if score $time showstart matches ..10000 run function show:timer


execute as @a[scores={c_cheer=1..},tag=playing] at @s run function game:cheer
execute as @a[scores={c_jeer=1..},tag=playing] at @s run function game:jeer
scoreboard players remove @a[scores={c_cooldown=1..}] c_cooldown 1
effect give @a[team=wyr] resistance 1 255 true
execute if score $scenario active matches 0 run effect give @a[tag=playing] resistance 1 255 true
execute if score $number check_gene matches 1 run function gene:check
execute if score $scenario active matches 1 if score $number awards matches 1 run function awards:add_stats


execute if entity @a[tag=!playing,gamemode=adventure] run function game:books/main

execute if entity @a[gamemode=spectator] run function game:spectator/main


execute as @a[tag=playing,nbt={Inventory:[{tag:{clear_during_games:1}}]}] at @s run clear @s #minecraft:check_out_our_other_games{clear_during_games:1}