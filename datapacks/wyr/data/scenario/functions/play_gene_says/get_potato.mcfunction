clear @s minecraft:poisonous_potato
kill @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}},distance=..15]
replaceitem entity @s hotbar.0 minecraft:poisonous_potato{HideFlags:63,display:{Name:'[{"text":"Old-Leftovers","color":"#accf55","italic":false}]'}}