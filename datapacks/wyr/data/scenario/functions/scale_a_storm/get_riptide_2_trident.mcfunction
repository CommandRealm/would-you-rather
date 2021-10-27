clear @s trident{Enchantments:[{id:"minecraft:riptide",lvl:2}]}
kill @e[type=item,nbt={Item:{id:"minecraft:trident"}},distance=..15]
item replace entity @s hotbar.1 with trident{display:{Name:'[{"text":"Riptide II Trident","color":"dark_aqua","italic":false}]'},HideFlags:63,Enchantments:[{id:"minecraft:riptide",lvl:2}],Unbreakable:1b}