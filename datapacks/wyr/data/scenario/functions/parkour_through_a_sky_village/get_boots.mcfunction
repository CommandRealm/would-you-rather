clear @s diamond_boots
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_boots"}},distance=..10]
replaceitem entity @s armor.feet diamond_boots{HideFlags:63,display:{Name:'[{"text":"Boots","color":"aqua","italic":false}]'}}