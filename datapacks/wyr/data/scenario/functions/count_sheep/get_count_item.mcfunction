clear @s lime_bed
kill @e[type=item,nbt={Item:{id:"minecraft:lime_bed"}},distance=..15]
replaceitem entity @s hotbar.0 lime_bed{HideFlags:63,display:{Name:'[{"text":"Drop to add your guess by one.","color":"green","italic":false}]'}}