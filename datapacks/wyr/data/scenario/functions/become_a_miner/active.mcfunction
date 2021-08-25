scoreboard players remove $time bam_timer 1
effect give @a[team=bam] speed 1 1 true
scoreboard players operation : bam_timer = $time bam_timer
scoreboard players operation : bam_timer /= $20 number
scoreboard players add : bam_timer 1
execute unless score : bam_timer = : bam_seconds run scoreboard players operation : bam_seconds = : bam_timer

execute if score $bam active_scenario matches 1 if score $time bam_timer matches 1.. run schedule function scenario:become_a_miner/active 1t
execute if score $bam active_scenario matches 1 unless entity @a[team=bam] run function scenario:become_a_miner/end

execute as @e[tag=bam_diamond] at @s if block ~ ~ ~ air run function scenario:become_a_miner/break_diamond
execute as @a[team=bam,gamemode=adventure] at @s run function scenario:become_a_miner/call_tracker
execute if score $time bam_timer matches 9540.. run function scenario:become_a_miner/elevator
execute if score $time bam_timer matches 9540 run kill @e[tag=bam_elevator,type=falling_block]
execute if score $time bam_timer matches 9539 run clone 8991 45 -7 8993 53 -5 8997 65 -2
execute if score $time bam_timer matches 9538 run scoreboard players set $time bam_timer 3600
execute if score $time bam_timer matches 9540 run effect clear @a[team=bam] levitation
execute at @a[team=bam] run kill @e[type=experience_orb,distance=..100]
execute if score $time bam_timer matches 3600 if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue bam_seconds
execute if score $time bam_timer matches 3600 if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow bam_seconds


execute as @a[tag=playing,team=bam,scores={bam_diamond=1}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:1b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=2}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:2b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=3}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:3b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=4}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:4b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=5}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:5b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=6}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:6b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=7}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:7b}]}] run function scenario:become_a_miner/get_diamonds

##execute as @a[team=bam] at @s store result score @s bam_diamond run clear @s diamond
##execute as @a[team=bam] at @s run scoreboard players operation @s bam_diamond += @s bam_diamond
execute as @a[team=bam,tag=playing,gamemode=adventure] at @s run title @s actionbar [{"text":"Diamonds: ","color":"dark_aqua"},{"text":"[","color":"aqua","bold":true},{"score":{"objective":"bam_diamond","name":"@s"},"color":"dark_aqua","bold":false},{"text":"/7","color":"dark_aqua","bold":false},{"text":"]","color":"aqua","bold":true}]


execute as @a[tag=playing,team=bam,gamemode=adventure,scores={bam_diamond=7..}] at @s run function scenario:become_a_miner/success


execute if score $time bam_timer matches 0 as @a[tag=playing,team=bam,gamemode=adventure] at @s run function scenario:become_a_miner/fail

execute as @a[team=bam,scores={death=1..},gamemode=adventure] at @s run function scenario:become_a_miner/fail

execute unless entity @e[tag=bam_diamond,type=area_effect_cloud] if score $time bam_timer matches 101.. run tellraw @a[tag=playing,team=bam,gamemode=adventure] {"text":"That last diamond ore has been broken! The timer has been shortened to five seconds!","color":"aqua"}
execute unless entity @e[tag=bam_diamond,type=area_effect_cloud] if score $time bam_timer matches 101.. as @a[tag=playing,team=bam] at @s run playsound minecraft:item.armor.equip_diamond master @s ~ ~ ~ 1 0.7
execute unless entity @e[tag=bam_diamond,type=area_effect_cloud] if score $time bam_timer matches 101.. run scoreboard players set $time bam_timer 100

execute if score $time bam_timer matches ..5000 as @a[team=bam,tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:iron_pickaxe"}]}] run function scenario:become_a_miner/get_pickaxe
execute as @a[team=bam] at @s positioned ~ ~1 ~ run tp @e[type=item,distance=..1] @s