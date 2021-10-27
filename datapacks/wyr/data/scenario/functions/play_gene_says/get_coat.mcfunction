clear @s leather_chestplate
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}},distance=..15]
item replace entity @s hotbar.0 with leather_chestplate{HideFlags:63,display:{Name:'[{"text":"Coat","color":"gray","italic":false}]',color:8876144}}