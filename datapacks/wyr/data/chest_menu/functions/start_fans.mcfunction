##Order:
#Bob
#Sully The Shulker
#Cats
#Darcy
#Dragon
#Blue TNT
#Marm
#Mad Scientist
#Melon Man
#Crbot
#Harv
#Elder Guardian
#Bubba
#Perry
#Brick



scoreboard players set @s screen 4
function chest_menu:clear



replaceitem entity @s enderchest.0 glass{HideFlags:63,display:{Name:'[{"text":"None","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=0}] enderchest.0 glass{HideFlags:63,display:{Name:'[{"text":"None","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.1 villager_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Bob","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=1}] enderchest.1 villager_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Bob","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.2 shulker_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Sully","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=2}] enderchest.2 shulker_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Sully","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.3 cat_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Cats","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=3}] enderchest.3 cat_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Cats","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.4 spruce_leaves{HideFlags:63,display:{Name:'[{"text":"Darcy","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=4}] enderchest.4 spruce_leaves{HideFlags:63,display:{Name:'[{"text":"Darcy","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.5 elytra{HideFlags:63,display:{Name:'[{"text":"Dragon","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=5}] enderchest.5 elytra{HideFlags:63,display:{Name:'[{"text":"Dragon","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.6 tnt{HideFlags:63,display:{Name:'[{"text":"TNT","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=6}] enderchest.6 tnt{HideFlags:63,display:{Name:'[{"text":"TNT","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.7 stone_hoe{CustomPotionColor:1356781,HideFlags:63,display:{Name:'[{"text":"Marm","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=7}] enderchest.7 stone_hoe{CustomPotionColor:1356781,HideFlags:63,display:{Name:'[{"text":"Marm","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.8 potion{HideFlags:63,display:{Name:'[{"text":"Mad Scientist","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=8}] enderchest.8 potion{HideFlags:63,display:{Name:'[{"text":"Mad Scientist","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.10 melon{HideFlags:63,display:{Name:'[{"text":"Melon Man","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=9}] enderchest.10 melon{HideFlags:63,display:{Name:'[{"text":"Melon Man","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.11 iron_bars{locked:1,HideFlags:63,display:{Name:'[{"text":"CR-Bot","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_f_10] enderchest.11 repeating_command_block{HideFlags:63,display:{Name:'[{"text":"CR-Bot","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=10}] enderchest.11 repeating_command_block{HideFlags:63,display:{Name:'[{"text":"CR-Bot","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.12 iron_bars{locked:2,HideFlags:63,display:{Name:'[{"text":"Harv","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_f_11] enderchest.12 carved_pumpkin{HideFlags:63,display:{Name:'[{"text":"Harv","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=11}] enderchest.12 carved_pumpkin{HideFlags:63,display:{Name:'[{"text":"Harv","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.13 iron_bars{locked:3,HideFlags:63,display:{Name:'[{"text":"Wise Guardian","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_f_12] enderchest.13 elder_guardian_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Wise Guardian","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=12}] enderchest.13 elder_guardian_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Wise Guardian","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.14 iron_bars{locked:4,HideFlags:63,display:{Name:'[{"text":"Bubba","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_f_13] enderchest.14 pufferfish{HideFlags:63,display:{Name:'[{"text":"Bubba","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=13}] enderchest.14 pufferfish{HideFlags:63,display:{Name:'[{"text":"Bubba","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.15 iron_bars{locked:5,HideFlags:63,display:{Name:'[{"text":"Perry","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_f_14] enderchest.15 parrot_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Perry","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=14}] enderchest.15 parrot_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Perry","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.16 iron_bars{locked:6,HideFlags:63,display:{Name:'[{"text":"Brick","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_f_15] enderchest.16 brain_coral_fan{HideFlags:63,display:{Name:'[{"text":"Brick","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=15}] enderchest.16 brain_coral_fan{HideFlags:63,display:{Name:'[{"text":"Brick","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}




replaceitem entity @s[tag=exclusive_jeb_sheep] enderchest.26 sheep_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Jeb Sheep","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Exclusive","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=16}] enderchest.26 sheep_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Jeb Sheep","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Exclusive","color":"red","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s[tag=exclusive_snow_fox] enderchest.26 fox_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Snow Fox","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Exclusive","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[scores={fans=17}] enderchest.26 fox_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Snow Fox","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Exclusive","color":"red","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.18 barrier{HideFlags:63,clickable:1,display:{Name:'[{"text":"Back","color":"#ff0000","italic":false,"bold":true}]'}}
