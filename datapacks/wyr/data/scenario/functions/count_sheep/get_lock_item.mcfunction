clear @s iron_bars
kill @e[type=item,nbt={Item:{id:"minecraft:iron_bars"}},distance=..15]
item replace entity @s hotbar.4 with iron_bars{HideFlags:63,display:{Name:'[{"text":"Drop to lock in your answer.","color":"gray","italic":false}]'}}