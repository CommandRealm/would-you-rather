clear @s trident{Enchantments:[{id:"minecraft:riptide",lvl:1}]}
kill @e[type=item,nbt={Item:{id:"minecraft:trident"}},distance=..15]
replaceitem entity @s hotbar.0 trident{display:{Name:'[{"text":"Riptide I Trident","color":"aqua","italic":false}]'},HideFlags:63,Enchantments:[{id:"minecraft:riptide",lvl:1}],Unbreakable:1b}