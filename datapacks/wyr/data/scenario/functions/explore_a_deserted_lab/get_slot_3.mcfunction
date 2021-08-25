clear @s repeater{eadl:3}
clear @s redstone_torch{eadl:3}
clear @s redstone{eadl:3}
kill @e[type=item,tag=!eadl_item,distance=..2]
replaceitem entity @s[scores={eadl_3=1}] hotbar.2 repeater{HideFlags:63,display:{Name:'[{"text":"Repeater","italic":false,"color":"gray"}]'},eadl:3}
replaceitem entity @s[scores={eadl_3=2}] hotbar.2 redstone_torch{HideFlags:63,display:{Name:'[{"text":"Redstone Torch","italic":false,"color":"red"}]'},eadl:3}
replaceitem entity @s[scores={eadl_3=3}] hotbar.2 redstone{HideFlags:63,display:{Name:'[{"text":"Redstone","italic":false,"color":"dark_red"}]'},eadl:3}