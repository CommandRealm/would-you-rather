clear @s red_bed
kill @e[type=item,nbt={Item:{id:"minecraft:red_bed"}},distance=..15]
item replace entity @s hotbar.1 with red_bed{HideFlags:63,display:{Name:'[{"text":"Drop to subtract your guess by one.","color":"red","italic":false}]'}}