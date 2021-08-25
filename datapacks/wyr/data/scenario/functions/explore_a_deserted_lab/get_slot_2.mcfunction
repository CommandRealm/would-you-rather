clear @s repeater{eadl:2}
clear @s redstone_torch{eadl:2}
clear @s redstone{eadl:2}
kill @e[type=item,tag=!eadl_item,distance=..2]
replaceitem entity @s[scores={eadl_2=1}] hotbar.1 repeater{HideFlags:63,display:{Name:'[{"text":"Repeater","italic":false,"color":"gray"}]'},eadl:2}
replaceitem entity @s[scores={eadl_2=2}] hotbar.1 redstone_torch{HideFlags:63,display:{Name:'[{"text":"Redstone Torch","italic":false,"color":"red"}]'},eadl:2}
replaceitem entity @s[scores={eadl_2=3}] hotbar.1 redstone{HideFlags:63,display:{Name:'[{"text":"Redstone","italic":false,"color":"dark_red"}]'},eadl:2}