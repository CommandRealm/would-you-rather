# called to give us a spyglass
clear @s spyglass
kill @e[type=item,nbt={Item:{id:"minecraft:spyglass"}},distance=..5]
item replace entity @s hotbar.8 with spyglass{HideFlags:63,display:{Name:'[{"text":"Spyglass","color":"yellow","italic":false}]'}}