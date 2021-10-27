# called to give us item 1
clear @s
kill @e[type=item,nbt={Item:{tag:{giant_item:1b}}},distance=..5]
item replace entity @s hotbar.4 with cooked_beef{giant_item:1b,display:{Name:'[{"text":"BEEF","bold":true,"color":"#7d4105","italic":false}]'}}