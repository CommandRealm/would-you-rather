execute as @a[gamemode=adventure,tag=!playing] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:knowledge_book",tag:{book_type:1}}]}] run function game:books/get_join_book
execute as @a[gamemode=adventure,tag=!playing] at @s unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:knowledge_book",tag:{book_type:2}}]}] run function game:books/get_spectator_book
execute as @a[scores={rc=1..},tag=!playing] at @s run function game:books/click