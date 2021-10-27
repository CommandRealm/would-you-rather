clear @s repeater{eadl:2}
clear @s redstone_torch{eadl:2}
clear @s redstone{eadl:2}
kill @e[type=item,tag=!eadl_item,distance=..2]
execute unless block 8010 56 -3 repeater unless block 8011 56 -1 repeater unless block 8010 56 1 repeater run item replace entity @s[scores={eadl_2=1}] hotbar.1 with repeater{HideFlags:63,display:{Name:'[{"text":"Repeater","italic":false,"color":"gray"}]'},eadl:2,CanPlaceOn:["minecraft:red_stained_glass"]}
execute unless block 8010 56 -3 redstone_torch unless block 8011 56 -1 redstone_torch unless block 8010 56 1 redstone_torch run item replace entity @s[scores={eadl_2=2}] hotbar.1 with redstone_torch{HideFlags:63,display:{Name:'[{"text":"Redstone Torch","italic":false,"color":"red"}]'},eadl:2,CanPlaceOn:["minecraft:red_stained_glass"]}
execute unless block 8010 56 -3 redstone_wire unless block 8011 56 -1 redstone_wire unless block 8010 56 1 redstone_wire run item replace entity @s[scores={eadl_2=3}] hotbar.1 with redstone{HideFlags:63,display:{Name:'[{"text":"Redstone","italic":false,"color":"dark_red"}]'},eadl:2,CanPlaceOn:["minecraft:red_stained_glass"]}