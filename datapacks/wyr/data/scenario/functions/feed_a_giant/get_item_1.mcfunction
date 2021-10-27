# called to give us item 1
clear @s
kill @e[type=item,nbt={Item:{tag:{giant_item:1b}}},distance=..5]
item replace entity @s hotbar.4 with melon_slice{giant_item:1b,display:{Name:'[{"text":"MELON","bold":true,"color":"red","italic":false}]'}}