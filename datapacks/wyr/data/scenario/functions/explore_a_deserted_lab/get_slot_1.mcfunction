clear @s repeater{eadl:1}
clear @s redstone_torch{eadl:1}
clear @s redstone{eadl:1}
kill @e[type=item,tag=!eadl_item,distance=..2]
replaceitem entity @s[scores={eadl_1=1}] hotbar.0 repeater{HideFlags:63,display:{Name:'[{"text":"Repeater","italic":false,"color":"gray"}]'},eadl:1}
replaceitem entity @s[scores={eadl_1=2}] hotbar.0 redstone_torch{HideFlags:63,display:{Name:'[{"text":"Redstone Torch","italic":false,"color":"red"}]'},eadl:1}
replaceitem entity @s[scores={eadl_1=3}] hotbar.0 redstone{HideFlags:63,display:{Name:'[{"text":"Redstone","italic":false,"color":"dark_red"}]'},eadl:1}