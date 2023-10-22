##0 default
##1 ice
##2 nether castle
##3 end city
##4 lumber
##5 mine
##6 ocean monument
##7 mushroom
##8 desert
##9 redstone
##10 warped biome
##11 crimson biome
##12 floating island
##13 cake
##14 savannah
##15 riches
##16 princess
##17 honey
##18 dirt 
##19 spooky
##20 bastion
##21 hot tub
##22 cloud
##23 futuristic
##24 steve
##25 creeper
##26 
##27 
##28 
##29 
##30 
##31 
##32 



scoreboard players set @s screen 3
function chest_menu:clear



item replace entity @s enderchest.0 with white_concrete{HideFlags:63,display:{Name:'[{"text":"Default","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=0}] enderchest.0 with white_concrete{HideFlags:63,display:{Name:'[{"text":"Default","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.1 with sunflower{HideFlags:63,display:{Name:'[{"text":"Flower","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=1}] enderchest.1 with sunflower{HideFlags:63,display:{Name:'[{"text":"Flower","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.2 with cartography_table{HideFlags:63,display:{Name:'[{"text":"Globe","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=2}] enderchest.2 with cartography_table{HideFlags:63,display:{Name:'[{"text":"Globe","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.3 with bone{HideFlags:63,display:{Name:'[{"text":"Skull & Crossbones","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=3}] enderchest.3 with bone{HideFlags:63,display:{Name:'[{"text":"Skull & Crossbones","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.4 with golden_sword{HideFlags:63,display:{Name:'[{"text":"Snout","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=4}] enderchest.4 with golden_sword{HideFlags:63,display:{Name:'[{"text":"Snout","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.5 with golden_apple{HideFlags:63,display:{Name:'[{"text":"Mojang","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=5}] enderchest.5 with golden_apple{HideFlags:63,display:{Name:'[{"text":"Mojang","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.6 with oak_boat{HideFlags:63,display:{Name:'[{"text":"Sailboat","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=6}] enderchest.6 with oak_boat{HideFlags:63,display:{Name:'[{"text":"Sailboat","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.7 with nether_brick{HideFlags:63,display:{Name:'[{"text":"Bricks","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=7}] enderchest.7 with nether_brick{HideFlags:63,display:{Name:'[{"text":"Bricks","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.8 with blaze_rod{HideFlags:63,display:{Name:'[{"text":"X","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=8}] enderchest.8 with blaze_rod{HideFlags:63,display:{Name:'[{"text":"X","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.10 with cyan_glazed_terracotta{HideFlags:63,display:{Name:'[{"text":"Gradient","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=9}] enderchest.10 with cyan_glazed_terracotta{HideFlags:63,display:{Name:'[{"text":"Gradient","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.11 with iron_bars{locked:1,HideFlags:63,display:{Name:'[{"text":"Smile","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_b_10] enderchest.11 with pink_wool{HideFlags:63,display:{Name:'[{"text":"Smile","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=10}] enderchest.11 with pink_wool{HideFlags:63,display:{Name:'[{"text":"Smile","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.12 with iron_bars{locked:2,HideFlags:63,display:{Name:'[{"text":"Rice","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_b_11] enderchest.12 with bowl{HideFlags:63,display:{Name:'[{"text":"Rice","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=11}] enderchest.12 with bowl{HideFlags:63,display:{Name:'[{"text":"Rice","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.13 with iron_bars{locked:3,HideFlags:63,display:{Name:'[{"text":"Ice","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_b_12] enderchest.13 with ice{HideFlags:63,display:{Name:'[{"text":"Ice","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=12}] enderchest.13 with ice{HideFlags:63,display:{Name:'[{"text":"Ice","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.14 with iron_bars{locked:4,HideFlags:63,display:{Name:'[{"text":"Duck","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_b_13] enderchest.14 with feather{HideFlags:63,display:{Name:'[{"text":"Duck","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=13}] enderchest.14 with feather{HideFlags:63,display:{Name:'[{"text":"Duck","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.15 with iron_bars{locked:5,HideFlags:63,display:{Name:'[{"text":"Panda","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_b_14] enderchest.15 with bamboo{HideFlags:63,display:{Name:'[{"text":"Panda","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=14}] enderchest.15 with bamboo{HideFlags:63,display:{Name:'[{"text":"Panda","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}

item replace entity @s enderchest.16 with iron_bars{locked:6,HideFlags:63,display:{Name:'[{"text":"Crown","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_b_15] enderchest.16 with golden_helmet{HideFlags:63,display:{Name:'[{"text":"Crown","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
item replace entity @s[scores={banners=15}] enderchest.16 with golden_helmet{HideFlags:63,display:{Name:'[{"text":"Crown","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{}]}





item replace entity @s enderchest.18 with barrier{HideFlags:63,clickable:1,display:{Name:'[{"text":"Back","color":"#ff0000","italic":false,"bold":true}]'}}
