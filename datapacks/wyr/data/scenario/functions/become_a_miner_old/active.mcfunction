scoreboard players remove $time bam_old_timer 1
effect give @a[team=bam_old] speed 1 1 true
scoreboard players operation : bam_old_timer = $time bam_old_timer
scoreboard players operation : bam_old_timer /= $20 number
scoreboard players add : bam_old_timer 1
execute unless score : bam_old_timer = : bam_old_seconds run scoreboard players operation : bam_old_seconds = : bam_old_timer

execute if score $bam_old active_scenario matches 1 if score $time bam_old_timer matches 1.. run schedule function scenario:become_a_miner_old/active 1t
execute if score $bam_old active_scenario matches 1 unless entity @a[team=bam_old] run function scenario:become_a_miner_old/end

execute as @e[tag=bam_old_diamond] at @s if block ~ ~ ~ air run function scenario:become_a_miner_old/break_diamond
execute as @a[team=bam_old,gamemode=adventure] at @s run function scenario:become_a_miner_old/call_tracker
execute if score $time bam_old_timer matches 9540.. run function scenario:become_a_miner_old/elevator
execute if score $time bam_old_timer matches 9540 run kill @e[tag=bam_old_elevator,type=falling_block]
execute if score $time bam_old_timer matches 9539 run clone 8991 45 -7 8993 53 -5 8997 65 -2
execute if score $time bam_old_timer matches 9538 run scoreboard players set $time bam_old_timer 3600
execute if score $time bam_old_timer matches 9540 run effect clear @a[team=bam_old] levitation
execute at @a[team=bam_old] run kill @e[type=experience_orb,distance=..100]
execute if score $time bam_old_timer matches 3600 if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue bam_old_seconds
execute if score $time bam_old_timer matches 3600 if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner [CLASSIC]",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow bam_old_seconds


execute as @a[tag=playing,team=bam_old,scores={bam_old_diamond=1}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:1b}]}] run function scenario:become_a_miner_old/get_diamonds
execute as @a[tag=playing,team=bam_old,scores={bam_old_diamond=2}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:2b}]}] run function scenario:become_a_miner_old/get_diamonds
execute as @a[tag=playing,team=bam_old,scores={bam_old_diamond=3}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:3b}]}] run function scenario:become_a_miner_old/get_diamonds
execute as @a[tag=playing,team=bam_old,scores={bam_old_diamond=4}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:4b}]}] run function scenario:become_a_miner_old/get_diamonds
execute as @a[tag=playing,team=bam_old,scores={bam_old_diamond=5}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:5b}]}] run function scenario:become_a_miner_old/get_diamonds
execute as @a[tag=playing,team=bam_old,scores={bam_old_diamond=6}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:6b}]}] run function scenario:become_a_miner_old/get_diamonds
execute as @a[tag=playing,team=bam_old,scores={bam_old_diamond=7}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:7b}]}] run function scenario:become_a_miner_old/get_diamonds

##execute as @a[team=bam_old] at @s store result score @s bam_old_diamond run clear @s diamond
##execute as @a[team=bam_old] at @s run scoreboard players operation @s bam_old_diamond += @s bam_old_diamond
execute as @a[team=bam_old,tag=playing,gamemode=adventure] at @s run title @s actionbar [{"text":"Diamonds: ","color":"dark_aqua"},{"text":"[","color":"aqua","bold":true},{"score":{"objective":"bam_old_diamond","name":"@s"},"color":"dark_aqua","bold":false},{"text":"/7","color":"dark_aqua","bold":false},{"text":"]","color":"aqua","bold":true}]


execute as @a[tag=playing,team=bam_old,gamemode=adventure,scores={bam_old_diamond=7..}] at @s run function scenario:become_a_miner_old/success


execute if score $time bam_old_timer matches 0 as @a[tag=playing,team=bam_old,gamemode=adventure] at @s run function scenario:become_a_miner_old/fail

execute as @a[team=bam_old,scores={death=1..},gamemode=adventure] at @s run function scenario:become_a_miner_old/fail

execute unless entity @e[tag=bam_old_diamond,type=area_effect_cloud] if score $time bam_old_timer matches 101.. run tellraw @a[tag=playing,team=bam_old,gamemode=adventure] {"text":"That last diamond ore has been broken! The timer has been shortened to five seconds!","color":"aqua"}
execute unless entity @e[tag=bam_old_diamond,type=area_effect_cloud] if score $time bam_old_timer matches 101.. as @a[tag=playing,team=bam_old] at @s run playsound minecraft:item.armor.equip_diamond master @s ~ ~ ~ 1 0.7
execute unless entity @e[tag=bam_old_diamond,type=area_effect_cloud] if score $time bam_old_timer matches 101.. run scoreboard players set $time bam_old_timer 100

execute if score $time bam_old_timer matches ..5000 as @a[team=bam_old,tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:iron_pickaxe"}]}] run function scenario:become_a_miner_old/get_pickaxe
execute as @a[team=bam_old] at @s positioned ~ ~1 ~ run tp @e[type=item,distance=..1] @s