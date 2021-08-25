clear @s knowledge_book{book_type:1}
clear @s knowledge_book{ready_book:-1}
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}},distance=..10]
replaceitem entity @s[gamemode=adventure] hotbar.3 knowledge_book{book_type:1,clickable:0,Recipes:[{id:"minecraft:book"}],display:{Name:"[{\"keybind\":\"key.use\",\"underlined\":true,\"italic\":false,\"color\":\"dark_aqua\",\"bold\":true},{\"text\":\" to play!\",\"color\":\"dark_aqua\",\"bold\":true,\"italic\":false,\"underlined\":true}]"},die:1}
