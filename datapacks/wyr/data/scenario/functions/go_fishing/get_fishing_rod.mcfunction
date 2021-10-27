clear @s fishing_rod
kill @e[type=item,nbt={Item:{id:"minecraft:fishing_rod"}},distance=..15]
item replace entity @s hotbar.0 with fishing_rod{HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Fishing Rod","color":"blue","italic":false}]'},Enchantments:[{id:"minecraft:lure",lvl:3}]}