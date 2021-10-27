clear @s minecraft:sugar
kill @e[type=item,nbt={Item:{id:"minecraft:sugar"}},distance=..15,tag=!pgs_die_between_rounds]
item replace entity @s hotbar.0 with minecraft:sugar{HideFlags:63,display:{Name:'[{"text":"Sugar","color":"white","italic":false}]'}}