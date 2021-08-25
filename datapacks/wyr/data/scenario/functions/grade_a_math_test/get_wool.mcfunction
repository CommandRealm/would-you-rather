clear @s lime_wool
clear @s red_wool
kill @e[type=item,nbt={Item:{id:"minecraft:lime_wool"}},distance=..10]
kill @e[type=item,nbt={Item:{id:"minecraft:red_wool"}},distance=..10]
replaceitem entity @s hotbar.3 lime_wool{display:{Name:'[{"text":"Press ","color":"green","italic":false},{"keybind":"key.drop"},{"text":" to answer: \\"True\\""}]'},die:1,gamt:1}
replaceitem entity @s hotbar.5 red_wool{display:{Name:'[{"text":"Press ","color":"red","italic":false},{"keybind":"key.drop"},{"text":" to answer: \\"False\\""}]'},die:1,gamt:1}