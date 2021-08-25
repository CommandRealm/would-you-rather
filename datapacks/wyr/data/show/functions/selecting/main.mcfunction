execute if score $time showstart matches 1000 run function show:selecting/start
execute unless score $time showstart matches 1280..1300 unless entity @a[scores={scenario_sel=0},tag=playing] run scoreboard players set $time showstart 1280
execute as @a[tag=playing] at @s unless entity @s[scores={scenario_sel=1}] unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:paper",tag:{blue_select:0}}]}] run function show:selecting/get_paper
execute as @a[tag=playing] at @s unless entity @s[scores={scenario_sel=2}] unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:paper",tag:{yellow_select:0}}]}] run function show:selecting/get_paper
execute as @a[tag=playing,scores={scenario_sel=1}] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:paper",tag:{blue_select:1}}]}] run function show:selecting/get_paper
execute as @a[tag=playing,scores={scenario_sel=2}] at @s unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:paper",tag:{yellow_select:1}}]}] run function show:selecting/get_paper
execute if score $time showstart matches 1300 run function show:selecting/over
title @a[team=wyr,tag=playing] actionbar [{"text":"\"","color":"blue"},{"selector":"@e[tag=blue_select]"},{"text":"\"","color":"blue"},{"text":" or ","color":"green"},{"text":"\"","color":"yellow"},{"selector":"@e[tag=yellow_select]"},{"text":"\"","color":"yellow"}]