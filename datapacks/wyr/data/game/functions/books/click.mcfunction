scoreboard players reset @s rc
execute if entity @s[nbt={SelectedItemSlot:5}] run function game:books/spectate
execute if entity @s[nbt={SelectedItemSlot:3}] run function game:books/join_game