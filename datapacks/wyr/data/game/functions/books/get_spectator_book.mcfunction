clear @s knowledge_book{book_type:2}
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}},distance=..10]
replaceitem entity @s[gamemode=adventure] hotbar.5 knowledge_book{book_type:2,clickable:0,Recipes:[{id:"minecraft:book"}],display:{Name:"[{\"keybind\":\"key.use\",\"underlined\":true,\"italic\":false,\"color\":\"gray\",\"bold\":true},{\"text\":\" to spectate.\",\"color\":\"gray\",\"bold\":true,\"italic\":false,\"underlined\":true}]"},die:1}
