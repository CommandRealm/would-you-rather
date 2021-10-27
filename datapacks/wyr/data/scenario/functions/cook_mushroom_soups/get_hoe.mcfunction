clear @s stone_hoe
kill @e[type=item,nbt={Item:{id:"minecraft:stone_hoe"}},distance=..5]
item replace entity @s hotbar.7 with stone_hoe{HideFlags:63,Unbreakable:1b,CanDestroy:["minecraft:wheat","minecraft:carrots","minecraft:potatoes"],display:{Name:'[{"text":"Crop Harvesting Tool","italic":false,"color":"gray"}]'}}