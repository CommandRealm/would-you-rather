clear @s iron_boots
kill @e[type=item,nbt={Item:[{id:"minecraft:iron_boots"}]},distance=..10]
replaceitem entity @s armor.feet iron_boots{HideFlags:63,display:{Name:'[{"text":"Boots","color":"gray","italic":false}]'}}