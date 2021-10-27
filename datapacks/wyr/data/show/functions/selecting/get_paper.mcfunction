execute positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{blue_select:0}}},distance=..1] run scoreboard players set @s scenario_sel 1
execute positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{yellow_select:0}}},distance=..1] run scoreboard players set @s scenario_sel 2
execute positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{id:"minecraft:paper"}},distance=..1] run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 100000000 1.1
execute if entity @e[type=item,nbt={Item:{id:"minecraft:paper"}},distance=..2.5] run function awards:calculate_sel_time

kill @e[type=item,nbt={Item:{id:"minecraft:paper"}},distance=..5]
clear @s paper


execute unless entity @s[scores={scenario_sel=1}] run loot replace entity @s hotbar.3 loot minecraft:scenario/blue_select
execute unless entity @s[scores={scenario_sel=2}] run loot replace entity @s hotbar.5 loot minecraft:scenario/yellow_select
loot replace entity @s[tag=playing,scores={scenario_sel=1}] hotbar.3 loot minecraft:scenario/blue_selected
loot replace entity @s[tag=playing,scores={scenario_sel=2}] hotbar.5 loot minecraft:scenario/yellow_selected