clear @s iron_boots
kill @e[type=item,nbt={Item:{id:"minecraft:iron_boots"}},distance=..10]
item replace entity @s armor.feet with iron_boots{HideFlags:63,display:{Name:'[{"text":"Boots","color":"aqua","italic":false}]'}}