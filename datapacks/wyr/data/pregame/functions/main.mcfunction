#called from general.main
#purpose is to prepare players for the start of the game


execute as @a[gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:knowledge_book"}]}] run function pregame:get_book


execute as @a[scores={rc=1..}] at @s run function pregame:click
scoreboard players set $number nplayers 0
execute as @a at @s run scoreboard players add $number nplayers 1
scoreboard players set $number rplayers 0
execute if entity @a[tag=admin] run scoreboard players add $number rplayers 1
execute if entity @a[tag=freestart] run scoreboard players add $number rplayers 2
execute as @a[scores={ready=1}] at @s run scoreboard players add $number rplayers 1
execute if score $number rplayers matches 1 run title @a[scores={ready=1}] title {"text":" "}
execute if score $number rplayers matches 1 run title @a[scores={ready=1}] subtitle {"text":"Waiting for another player to ready up.","color":"gray","underlined":true}
execute if score $number rplayers matches 2.. if score $time startup_timer matches -101 run function pregame:start_countdown
execute if score $number rplayers matches 2.. run function pregame:countdown
execute if score $number rplayers matches ..1 unless score $time startup_timer matches -101 run scoreboard objectives remove playing
execute if score $number rplayers matches ..1 unless score $time startup_timer matches -101 run scoreboard players set $time startup_timer -101