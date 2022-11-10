scoreboard players remove $time bam_timer 1
#effect give @a[team=bam] speed 1 1 true
scoreboard players operation : bam_timer = $time bam_timer
scoreboard players operation : bam_timer /= $20 number
scoreboard players add : bam_timer 1
execute unless score : bam_timer = : bam_seconds run scoreboard players operation : bam_seconds = : bam_timer

execute if score $bam active_scenario matches 1 if score $time bam_timer matches 1.. run schedule function scenario:become_a_miner/active 1t
execute if score $bam active_scenario matches 1 unless entity @a[team=bam] run function scenario:become_a_miner/end

execute as @e[tag=bam_diamond] at @s if block ~ ~ ~ air run function scenario:become_a_miner/break_diamond
#execute as @a[team=bam,gamemode=adventure] at @s run function scenario:become_a_miner/call_tracker
execute if entity @e[type=armor_stand,tag=bam_elevator] run function scenario:become_a_miner/elevator
execute as @e[tag=bam_elevator] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ iron_bars run stopsound @a[team=bam] * entity.minecart.inside
execute as @e[tag=bam_elevator] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ iron_bars run tag @e[tag=bam_elevator] add bam_ele_die
tp @e[tag=bam_ele_die] 0 -10000 0
kill @e[tag=bam_ele_die]
execute unless entity @e[tag=bam_elevator] run clone 8825 113 -22 8827 121 -20 8831 133 -17
execute at @a[team=bam] run kill @e[type=experience_orb,distance=..100]
execute unless entity @e[tag=bam_elevator] if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue bam_seconds
execute unless entity @e[tag=bam_elevator] if entity @e[tag=chosen,type=area_effect_cloud,name="Become a miner",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow bam_seconds


execute as @a[tag=playing,team=bam,scores={bam_diamond=1}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:1b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=2}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:2b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=3}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:3b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=4}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:4b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=5}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:5b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=6}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:6b}]}] run function scenario:become_a_miner/get_diamonds
execute as @a[tag=playing,team=bam,scores={bam_diamond=7}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:diamond",Count:7b}]}] run function scenario:become_a_miner/get_diamonds

##execute as @a[team=bam] at @s store result score @s bam_diamond run clear @s diamond
##execute as @a[team=bam] at @s run scoreboard players operation @s bam_diamond += @s bam_diamond
execute as @a[team=bam,tag=playing,gamemode=adventure] at @s run title @s actionbar [{"text":"Diamonds: ","color":"dark_aqua"},{"text":"[","color":"aqua","bold":true},{"score":{"objective":"bam_diamond","name":"@s"},"color":"dark_aqua","bold":false},{"text":"/3","color":"dark_aqua","bold":false},{"text":"]","color":"aqua","bold":true}]

execute if score $time bam_timer matches 0 as @a[tag=playing,team=bam,gamemode=adventure,scores={bam_diamond=..2}] at @s run function scenario:become_a_miner/fail
execute if score $time bam_timer matches 0 as @a[tag=playing,team=bam,gamemode=adventure,scores={bam_diamond=3..}] at @s run function scenario:become_a_miner/success

execute as @a[team=bam,scores={death=1..},gamemode=adventure] at @s run function scenario:become_a_miner/fail

execute unless entity @a[tag=playing,team=bam,gamemode=adventure,scores={bam_diamond=0}] if score $time bam_timer matches 101.. run function scenario:become_a_miner/five_seconds
execute unless entity @e[tag=bam_diamond,type=marker] if score $time bam_timer matches 101.. run function scenario:become_a_miner/five_seconds

execute if score $time bam_timer matches ..5000 as @a[team=bam,tag=playing,scores={bam_diamond=0}] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:iron_pickaxe"}]}] run function scenario:become_a_miner/get_pickaxe
execute as @a[team=bam] at @s positioned ~ ~1 ~ run tp @e[type=item,distance=..1] @s