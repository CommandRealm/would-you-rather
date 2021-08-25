execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:filled_map",tag:{ptp_paper:1}}]}] run function scenario:play_the_piano/play_c
execute unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:filled_map",tag:{ptp_paper:2}}]}] run function scenario:play_the_piano/play_d
execute unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:filled_map",tag:{ptp_paper:3}}]}] run function scenario:play_the_piano/play_e
execute unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:filled_map",tag:{ptp_paper:4}}]}] run function scenario:play_the_piano/play_f
execute unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:filled_map",tag:{ptp_paper:5}}]}] run function scenario:play_the_piano/play_g
execute unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:filled_map",tag:{ptp_paper:6}}]}] run function scenario:play_the_piano/play_a
execute unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:filled_map",tag:{ptp_paper:7}}]}] run function scenario:play_the_piano/play_b
execute unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:filled_map",tag:{ptp_paper:8}}]}] run function scenario:play_the_piano/play_high_c
kill @e[type=item,distance=..3]
clear @s
scoreboard players reset @s ptp_drop

