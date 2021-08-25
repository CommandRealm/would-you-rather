clear @s red_bed
kill @e[type=item,nbt={Item:{id:"minecraft:red_bed"}},distance=..15]
replaceitem entity @s hotbar.1 red_bed{HideFlags:63,display:{Name:'[{"text":"Drop to subtract your guess by one.","color":"red","italic":false}]'}}