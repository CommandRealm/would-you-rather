clear @s paper
kill @e[type=item,nbt={Item:{id:"minecraft:paper"}},distance=..10]
item replace entity @s hotbar.7 with minecraft:paper{display:{Name:'{"text":"Royalty\'s Location","color":"#fBe0ff","italic":false}'}}