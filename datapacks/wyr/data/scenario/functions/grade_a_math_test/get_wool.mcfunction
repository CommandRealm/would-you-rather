clear @s lime_wool
clear @s red_wool
kill @e[type=item,nbt={Item:{id:"minecraft:lime_wool"}},distance=..10]
kill @e[type=item,nbt={Item:{id:"minecraft:red_wool"}},distance=..10]
item replace entity @s hotbar.3 with lime_wool{display:{Name:'[{"text":"Press ","color":"green","italic":false},{"keybind":"key.drop"},{"text":" to answer: \\"True\\""}]'},die:1,gamt:1}
item replace entity @s hotbar.5 with red_wool{display:{Name:'[{"text":"Press ","color":"red","italic":false},{"keybind":"key.drop"},{"text":" to answer: \\"False\\""}]'},die:1,gamt:1}