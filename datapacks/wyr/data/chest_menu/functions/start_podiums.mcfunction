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



scoreboard players set @s screen 2
function chest_menu:clear



replaceitem entity @s enderchest.0 quartz_pillar{HideFlags:63,display:{Name:'[{"text":"Default","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=0}] enderchest.0 quartz_pillar{HideFlags:63,display:{Name:'[{"text":"Default","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.1 ice{HideFlags:63,display:{Name:'[{"text":"Ice","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=1}] enderchest.1 ice{HideFlags:63,display:{Name:'[{"text":"Ice","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.2 nether_bricks{HideFlags:63,display:{Name:'[{"text":"Nether Fortress","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=2}] enderchest.2 nether_bricks{HideFlags:63,display:{Name:'[{"text":"Nether Fortress","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.3 end_stone{HideFlags:63,display:{Name:'[{"text":"End","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=3}] enderchest.3 end_stone{HideFlags:63,display:{Name:'[{"text":"End","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.4 oak_log{HideFlags:63,display:{Name:'[{"text":"Lumber","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=4}] enderchest.4 oak_log{HideFlags:63,display:{Name:'[{"text":"Lumber","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.5 stone{HideFlags:63,display:{Name:'[{"text":"Mine","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=5}] enderchest.5 stone{HideFlags:63,display:{Name:'[{"text":"Mine","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.6 dark_prismarine{HideFlags:63,display:{Name:'[{"text":"Ocean","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=6}] enderchest.6 dark_prismarine{HideFlags:63,display:{Name:'[{"text":"Ocean","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.7 red_mushroom_block{HideFlags:63,display:{Name:'[{"text":"Mushroom","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=7}] enderchest.7 red_mushroom_block{HideFlags:63,display:{Name:'[{"text":"Mushroom","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.8 sand{HideFlags:63,display:{Name:'[{"text":"Desert","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=8}] enderchest.8 sand{HideFlags:63,display:{Name:'[{"text":"Desert","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.9 redstone_block{HideFlags:63,display:{Name:'[{"text":"Redstone","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=9}] enderchest.9 redstone_block{HideFlags:63,display:{Name:'[{"text":"Redstone","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.10 warped_nylium{HideFlags:63,display:{Name:'[{"text":"Warped","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=10}] enderchest.10 warped_nylium{HideFlags:63,display:{Name:'[{"text":"Warped","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.11 crimson_nylium{HideFlags:63,display:{Name:'[{"text":"Crimson","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=11}] enderchest.11 crimson_nylium{HideFlags:63,display:{Name:'[{"text":"Crimson","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.12 grass_block{HideFlags:63,display:{Name:'[{"text":"Floating Island","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=12}] enderchest.12 grass_block{HideFlags:63,display:{Name:'[{"text":"Floating Island","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.13 cake{HideFlags:63,display:{Name:'[{"text":"Cake","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=13}] enderchest.13 cake{HideFlags:63,display:{Name:'[{"text":"Cake","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.14 acacia_log{HideFlags:63,display:{Name:'[{"text":"Savannah","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=14}] enderchest.14 acacia_log{HideFlags:63,display:{Name:'[{"text":"Savannah","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.15 iron_bars{locked:1,HideFlags:63,display:{Name:'[{"text":"Treasure","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_15] enderchest.15 emerald_block{HideFlags:63,display:{Name:'[{"text":"Treasure","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=15}] enderchest.15 emerald_block{HideFlags:63,display:{Name:'[{"text":"Treasure","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.16 iron_bars{locked:2,HideFlags:63,display:{Name:'[{"text":"Princess","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_16] enderchest.16 pink_concrete{HideFlags:63,display:{Name:'[{"text":"Princess","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=16}] enderchest.16 pink_concrete{HideFlags:63,display:{Name:'[{"text":"Princess","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.17 iron_bars{locked:3,HideFlags:63,display:{Name:'[{"text":"Bee","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_17] enderchest.17 honey_block{HideFlags:63,display:{Name:'[{"text":"Bee","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=17}] enderchest.17 honey_block{HideFlags:63,display:{Name:'[{"text":"Bee","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.19 iron_bars{locked:4,HideFlags:63,display:{Name:'[{"text":"Dirt","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_18] enderchest.19 dirt{HideFlags:63,display:{Name:'[{"text":"Dirt","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=18}] enderchest.19 dirt{HideFlags:63,display:{Name:'[{"text":"Dirt","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.20 iron_bars{locked:5,HideFlags:63,display:{Name:'[{"text":"Spooky","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_19] enderchest.20 carved_pumpkin{HideFlags:63,display:{Name:'[{"text":"Spooky","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=19}] enderchest.20 carved_pumpkin{HideFlags:63,display:{Name:'[{"text":"Spooky","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.21 iron_bars{locked:6,HideFlags:63,display:{Name:'[{"text":"Bastion","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_20] enderchest.21 polished_blackstone_bricks{HideFlags:63,display:{Name:'[{"text":"Bastion","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=20}] enderchest.21 polished_blackstone_bricks{HideFlags:63,display:{Name:'[{"text":"Bastion","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.22 iron_bars{locked:7,HideFlags:63,display:{Name:'[{"text":"Hot Tub","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_21] enderchest.22 light_gray_stained_glass{HideFlags:63,display:{Name:'[{"text":"Hot Tub","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=21}] enderchest.22 light_gray_stained_glass{HideFlags:63,display:{Name:'[{"text":"Hot Tub","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.23 iron_bars{locked:8,HideFlags:63,display:{Name:'[{"text":"Cloud","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_22] enderchest.23 white_wool{HideFlags:63,display:{Name:'[{"text":"Cloud","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=22}] enderchest.23 white_wool{HideFlags:63,display:{Name:'[{"text":"Cloud","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.24 iron_bars{locked:9,HideFlags:63,display:{Name:'[{"text":"Futuristic","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_23] enderchest.24 smooth_quartz{HideFlags:63,display:{Name:'[{"text":"Futuristic","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=23}] enderchest.24 smooth_quartz{HideFlags:63,display:{Name:'[{"text":"Futuristic","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.25 iron_bars{locked:10,HideFlags:63,display:{Name:'[{"text":"Player","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_24] enderchest.25 player_head{HideFlags:63,display:{Name:'[{"text":"Player","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=24}] enderchest.25 player_head{HideFlags:63,display:{Name:'[{"text":"Player","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.26 iron_bars{locked:11,HideFlags:63,display:{Name:'[{"text":"Creeper","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_p_25] enderchest.26 creeper_head{HideFlags:63,display:{Name:'[{"text":"Creeper","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={podium=25}] enderchest.26 creeper_head{HideFlags:63,display:{Name:'[{"text":"Creeper","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


##legendary
replaceitem entity @s enderchest.18 barrier{HideFlags:63,clickable:1,display:{Name:'[{"text":"Back","color":"#ff0000","italic":false,"bold":true}]'}}
