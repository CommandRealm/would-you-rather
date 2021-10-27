# called to give us item 1
clear @s
kill @e[type=item,nbt={Item:{tag:{giant_item:1b}}},distance=..5]
item replace entity @s hotbar.4 with glow_berries{giant_item:1b,display:{Name:'[{"text":"BERRIES","bold":true,"color":"yellow","italic":false}]'}}