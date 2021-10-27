# called to give us item 1
clear @s
kill @e[type=item,nbt={Item:{tag:{giant_item:1b}}},distance=..5]
item replace entity @s hotbar.4 with cake{giant_item:1b,display:{Name:'[{"text":"CAKE","bold":true,"color":"light_purple","italic":false}]'}}