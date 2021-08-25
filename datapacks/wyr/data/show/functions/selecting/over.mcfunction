function awards:add_non_dummy
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.890899
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0.890899
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 1.414214
execute as @a[tag=playing,scores={scenario_sel=0}] at @s run function awards:calculate_sel_time
execute as @a[tag=playing,scores={scenario_sel=0}] at @s if entity @s[nbt={SelectedItemSlot:3}] run scoreboard players set @s scenario_sel 1
execute as @a[tag=playing,scores={scenario_sel=0}] at @s if entity @s[nbt={SelectedItemSlot:5}] run scoreboard players set @s scenario_sel 2
execute as @a[tag=playing,scores={scenario_sel=0}] at @s run function show:selecting/random_select
execute as @a[tag=playing,scores={scenario_sel=1}] at @s run tellraw @s [{"text":"You will attempt to: \"","color":"blue"},{"selector":"@e[tag=blue_select,type=area_effect_cloud]"},{"text":"\""}]
execute as @a[tag=playing,scores={scenario_sel=2}] at @s run tellraw @s [{"text":"You will attempt to: \"","color":"yellow"},{"selector":"@e[tag=yellow_select,type=area_effect_cloud]"},{"text":"\""}]
tag @e[type=area_effect_cloud,tag=chosen] remove chosen
execute if entity @a[scores={scenario_sel=1},tag=playing] run tag @e[type=area_effect_cloud,tag=blue_select] add chosen
execute if entity @a[scores={scenario_sel=2},tag=playing] run tag @e[type=area_effect_cloud,tag=yellow_select] add chosen
clear @a[tag=playing] paper
bossbar set minecraft:guesstime visible false