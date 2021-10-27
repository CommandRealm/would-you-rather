clear @s diamond_boots
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_boots"}},distance=..10]
item replace entity @s armor.feet with diamond_boots{HideFlags:63,display:{Name:'[{"text":"Boots","color":"aqua","italic":false}]'}}