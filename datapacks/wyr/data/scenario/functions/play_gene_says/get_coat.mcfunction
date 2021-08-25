clear @s leather_chestplate
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}},distance=..15]
replaceitem entity @s hotbar.0 leather_chestplate{HideFlags:63,display:{Name:'[{"text":"Coat","color":"gray","italic":false}]',color:8876144}}