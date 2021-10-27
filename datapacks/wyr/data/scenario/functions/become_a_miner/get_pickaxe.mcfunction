clear @s iron_pickaxe
kill @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}},distance=..5]
item replace entity @a[team=bam] hotbar.0 with iron_pickaxe{Unbreakable:1b,HideFlags:63,display:{Name:'{"text":"Lucky Diamond Breaker","color":"aqua","italic":false}'},CanDestroy:["minecraft:diamond_ore"],Enchantments:[{id:"minecraft:fortune",lvl:3}]}