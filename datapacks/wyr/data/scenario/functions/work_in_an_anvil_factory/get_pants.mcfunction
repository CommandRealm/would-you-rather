clear @s iron_leggings
kill @e[type=item,nbt={Item:{id:"minecraft:iron_leggings"}},distance=..15]
item replace entity @s armor.legs with iron_leggings{HideFlags:63,display:{Name:'[{"text":"Pants","color":"gray","italic":false}]'},AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[4, 4, 4, 4]}]}