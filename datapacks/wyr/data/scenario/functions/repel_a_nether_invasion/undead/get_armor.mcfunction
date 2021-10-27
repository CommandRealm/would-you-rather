#  called to give us armor
clear @s wither_skeleton_skull
clear @s leather_chestplate
clear @s leather_leggings
clear @s leather_boots

kill @e[type=item,distance=..5,nbt={Item:{tag:{undead_armor_piece:1}}}]

item replace entity @s armor.head with wither_skeleton_skull{Unbreakable:1b,undead_armor_piece:1,HideFlags:63,display:{Name:'[{"text":"Skull","color":"gray","italic":false}]'}}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,undead_armor_piece:1,HideFlags:63,display:{color:0,Name:'[{"text":"Chestplate","color":"gray","italic":false}]'}}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,undead_armor_piece:1,HideFlags:63,display:{color:0,Name:'[{"text":"Leggings","color":"gray","italic":false}]'}}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,undead_armor_piece:1,HideFlags:63,display:{color:0,Name:'[{"text":"Boots","color":"gray","italic":false}]'}}