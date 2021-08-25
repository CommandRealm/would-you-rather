


execute if entity @e[tag=fan_perry,type=parrot] run function fans:parrot

#called from show:startup
#purpose is to introduce gene and ask questions

effect give @a[team=select] resistance 1 255 true

scoreboard players add $time showstart 1

execute if score $time showstart matches 2 run function show:join_selector
execute if score $time showstart matches 2 run tellraw @a[tag=playing] [{"text":"<","color":"blue"},{"text":"Technician","color":"aqua"},{"text":">","color":"blue"},{"text":" Five seconds until you are on stage!","color":"aqua"}]
execute if score $time showstart matches 2 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.2
execute if score $time showstart matches 10 run function show:setup_podium
execute if score $time showstart matches 10 run function show:reset_tv
execute if score $time showstart matches 100 run function show:podium
execute if score $time showstart matches 100 run clone -949 55 16 -921 65 17 -949 86 12
execute if score $time showstart matches 110 if score $number fast_mode matches 1 run scoreboard players set $time showstart 730

execute if score $time showstart matches 140 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"Announcer","color":"gray"},{"text":">","color":"dark_gray"},{"text":" Ladies and gentlemen, give it up for your host . . . Gene!","color":"aqua"}]
execute if score $time showstart matches 140 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.7
execute if score $time showstart matches 160 run scoreboard players set $clap clap 80


##
execute if score $time showstart matches 320 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" Welcome to Would You Rather!","color":"aqua"}] 
execute if score $time showstart matches 320 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9

execute if score $time showstart matches 400 run function gene:welcome

execute if score $time showstart matches 471 run scoreboard objectives setdisplay sidebar points

execute if score $time showstart matches 520 run function show:reset_tv
execute if score $time showstart matches 520 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" It's time to ask the question . . .","color":"aqua"}] 
execute if score $time showstart matches 520 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9

execute if score $time showstart matches 550 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" WOULD!","color":"aqua"}] 
execute if score $time showstart matches 550 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9

execute if score $time showstart matches 580 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" YOU!","color":"aqua"}] 
execute if score $time showstart matches 580 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9

execute if score $time showstart matches 610 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":">","color":"blue"},{"text":" RATHER!","color":"aqua"}] 
execute if score $time showstart matches 610 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 615 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9

execute if score $time showstart matches 620 run scoreboard players set $theme theme 0
execute if score $time showstart matches 620 run function game:theme


execute if score $time showstart matches 670 run scoreboard players set $theme theme 0
execute if score $time showstart matches 670 run function game:theme

execute if score $time showstart matches 741 run scoreboard players set $number check_gene 1
execute if score $time showstart matches 750 run function show:reset_tv
execute if score $time showstart matches 750 if score $criteria round matches 1.. run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"Would you rather,","color":"aqua"}]
execute if score $time showstart matches 750 if score $criteria round matches 1.. as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 750 unless entity @e[type=area_effect_cloud,tag=!wyrselected,tag=scenario] run tag @e[tag=wyrselected,type=area_effect_cloud] remove wyrselected	
execute if score $time showstart matches 750 run tag @e[tag=wyrselect,type=area_effect_cloud] remove wyrselect
execute if score $time showstart matches 750 run tag @e[tag=scenario,type=area_effect_cloud] remove wyr_choice
execute if score $time showstart matches 750 run tag @a remove pick_blue
execute if score $time showstart matches 750 run tag @a remove pick_yellow

execute if score $time showstart matches 779 run tag @e[type=area_effect_cloud,tag=scenario,sort=random,limit=1,tag=!wyrselected] add wyrselect
execute if score $time showstart matches 780 run function game:blue_scenario
execute if score $time showstart matches 780 run fill -935 86 12 -935 96 12 minecraft:polished_andesite
execute if score $time showstart matches 780 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.75

execute if score $time showstart matches 800 unless entity @e[type=area_effect_cloud,tag=!wyrselected,tag=scenario] run tag @e[tag=wyrselected,type=area_effect_cloud,tag=!wyr_choice] remove wyrselected
execute if score $time showstart matches 800 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 800 run tellraw @a {"text":"or","color":"green"}


execute if score $time showstart matches 819 run tag @e[type=area_effect_cloud,tag=scenario,sort=random,limit=1,tag=!wyrselected] add wyrselect
execute if score $time showstart matches 820 run function game:yellow_scenario
execute if score $time showstart matches 820 as @a[tag=playing] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.75



execute if score $time showstart matches 840 run bossbar set minecraft:guesstime value 300

execute if score $time showstart matches 860 run tellraw @a[tag=playing] [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"Think carefully about your choice.","color":"aqua"}]
execute if score $time showstart matches 860 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 860 as @a[tag=playing] at @s run scoreboard players set $time showstart 1000

execute if score $time showstart matches 999 run scoreboard players set $time beat 0
execute if score $time showstart matches 1000..1300 run function show:selecting/main
execute if score $time showstart matches 1000 run bossbar set minecraft:guesstime players @a
execute if score $time showstart matches 1000 run bossbar set minecraft:guesstime visible true
execute if score $time showstart matches 1000 run scoreboard players set $time guess_bar 300

execute if score $time showstart matches 1000 run function show:remove_guess_time



##execute if score $time showstart matches 1305 run gamemode spectator @a[team=select]
##execute if score $time showstart matches 1305 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"Time is up! ","color":"aqua"},{"selector":"@a[team=select]"},{"text":" is making their way onto the stage to make their selection!","color":"aqua"}]
##execute if score $time showstart matches 1305 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
##execute if score $time showstart matches 1305 as @a[tag=playing] at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 2
##execute if score $time showstart matches 1305 run bossbar set minecraft:guesstime visible false
##
##execute if score $time showstart matches 1305 run bossbar set minecraft:choosetime value 200
##
##execute if score $time showstart matches 1400 run scoreboard players set $time beat 0
##execute if score $time showstart matches 1400 run title @a[tag=playing] times 0 20 10
##
##execute if score $time showstart matches 1406 as @p[team=select] run function show:choose
##execute if score $time showstart matches 1406 run bossbar set minecraft:choosetime players @a
##execute if score $time showstart matches 1406 run bossbar set minecraft:choosetime visible true
##execute if score $time showstart matches 1406 run scoreboard players set $time choose_bar 200
##execute if score $time showstart matches 1406 run function show:remove_choose_time
##
##execute if score $time showstart matches 1406..1606 run title @a[team=select] title {"text":" "}
##execute if score $time showstart matches 1406..1606 run title @a[team=select] subtitle [{"text":"\"","color":"blue"},{"selector":"@e[tag=blue_select]"},{"text":"\"","color":"blue"},{"text":" or ","color":"green"},{"text":"\"","color":"yellow"},{"selector":"@e[tag=yellow_select]"},{"text":"\"","color":"yellow"}]
##
##execute if score $time showstart matches 1607 as @e[tag=wyrselected,sort=random,limit=1] at @s run function show:choose_random
##execute if score $time showstart matches 1607 as @a[tag=playing] at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 2


execute if score $time showstart matches 1321 as @a[gamemode=spectator,tag=!building] at @s run function game:unspectate_player
execute if score $time showstart matches 1321 run gamemode spectator @a[tag=playing]
execute if score $time showstart matches 1321..1440 as @a[gamemode=spectator,tag=!building] at @s run spectate @e[tag=spectate_screen,sort=nearest,limit=1] @s
execute if score $time showstart matches 1351 run title @a[tag=playing] times 5 20 5
execute if score $time showstart matches 1351 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"Let's take it down to the field!","color":"aqua"}]
execute if score $time showstart matches 1351 run scoreboard players set $number check_gene 0
execute if score $time showstart matches 1351 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 1351 run scoreboard objectives setdisplay sidebar
execute if score $time showstart matches 1391 run function show:announce_selections

execute if score $time showstart matches 1441 run function scenario:check
execute if score $time showstart matches 1441 run scoreboard players set $time showstart 100000000

execute if score $time showstart matches 3000..4000 run function show:add_points




##execute if score $time showstart matches 4000 run function show:join_selector
##
##execute if score $time showstart matches 4000 run effect give @a[tag=playing] blindness 1 255 true
##execute if score $time showstart matches 4000 run tp @a[tag=playing] -931 24 -17 230 0
##
##execute if score $time showstart matches 4010 run function show:setup_podium
##execute if score $time showstart matches 4020 run function show:podium
##execute if score $time showstart matches 4040 run scoreboard players set $time showstart 5000

execute if score $time showstart matches 5001 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"Here we go!","color":"aqua"}] 
execute if score $time showstart matches 5001 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9

execute if score $time showstart matches 5050 run scoreboard players set $time showstart 740


execute if score $time showstart matches 6050 run function gene:pre_winner

execute if score $time showstart matches 6121 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"The winner is . . .","color":"aqua"}] 
execute if score $time showstart matches 6121 as @a[tag=playing] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.9

execute if score $time showstart matches 6191 run function gene:announce_winner

execute if score $time showstart matches 6201 run scoreboard players set $clap clap 170

execute if score $time showstart matches 6201 run function show:fireworks
execute if score $time showstart matches 6241 run function show:fireworks
execute if score $time showstart matches 6281 run function show:fireworks
execute if score $time showstart matches 6321 run function show:fireworks
execute if score $time showstart matches 6361 run function show:fireworks
execute if score $time showstart matches 6371 run function show:fireworks

execute if score $time showstart matches 6280 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"Congratulations ","color":"aqua"},{"selector":"@a[scores={fake_points=0},tag=playing]"},{"text":"!","color":"aqua"}] 
execute if score $time showstart matches 6280 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9

execute if score $time showstart matches 6350 run tellraw @a [{"text":"<","color":"blue"},{"text":"Gene","color":"aqua"},{"text":"> ","color":"blue"},{"text":"We'll see you next time on WOULD YOU RATHER!","color":"aqua"}] 
execute if score $time showstart matches 6350 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 6370 at @e[type=armor_stand,tag=gene] run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.15 100
execute if score $time showstart matches 6370 as @a[tag=playing] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 6370 run kill @e[type=armor_stand,tag=gene]
execute if score $time showstart matches 6410 run function show:reset_tv
execute if score $time showstart matches 6410 run function game:calculate_winner

execute if score $time showstart matches 7000..7999 run function awards:show


##8000 is reserved for fast-mode
execute if score $time showstart matches 8080 run tellraw @a[tag=playing] [{"text":"Scenario skipped.","color":"red","bold":true}]
execute if score $time showstart matches 8080 run tag @a[tag=playing] remove success
execute if score $time showstart matches 8080 run tag @a[tag=playing] remove fail
execute if score $time showstart matches 8080 run tag @a[tag=playing] remove skipped_scenario
execute if score $time showstart matches 8080 run tag @a[tag=playing] add skipped_scenario
execute if score $time showstart matches 8080 if entity @e[type=area_effect_cloud,tag=pointless_scenario,tag=chosen] unless entity @e[type=area_effect_cloud,tag=!pointless_scenario,tag=chosen] run function scenario:scenarios_over


#



effect give @a[x=-1000,y=67,z=0,distance=..1000,tag=playing] fire_resistance 2 255 true
effect give @a[x=-1000,y=67,z=0,distance=..1000,tag=playing] instant_health 2 9 true