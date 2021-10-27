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



item replace entity @s enderchest.0 with quartz_pillar{HideFlags:63,display:{Name:'[{"text":"Default","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=0}] enderchest.0 with quartz_pillar{HideFlags:63,display:{Name:'[{"text":"Default","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.1 with ice{HideFlags:63,display:{Name:'[{"text":"Ice","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=1}] enderchest.1 with ice{HideFlags:63,display:{Name:'[{"text":"Ice","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.2 with nether_bricks{HideFlags:63,display:{Name:'[{"text":"Nether Fortress","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=2}] enderchest.2 with nether_bricks{HideFlags:63,display:{Name:'[{"text":"Nether Fortress","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.3 with end_stone{HideFlags:63,display:{Name:'[{"text":"End","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=3}] enderchest.3 with end_stone{HideFlags:63,display:{Name:'[{"text":"End","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.4 with oak_log{HideFlags:63,display:{Name:'[{"text":"Lumber","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=4}] enderchest.4 with oak_log{HideFlags:63,display:{Name:'[{"text":"Lumber","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.5 with stone{HideFlags:63,display:{Name:'[{"text":"Mine","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=5}] enderchest.5 with stone{HideFlags:63,display:{Name:'[{"text":"Mine","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.6 with dark_prismarine{HideFlags:63,display:{Name:'[{"text":"Ocean","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=6}] enderchest.6 with dark_prismarine{HideFlags:63,display:{Name:'[{"text":"Ocean","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.7 with red_mushroom_block{HideFlags:63,display:{Name:'[{"text":"Mushroom","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=7}] enderchest.7 with red_mushroom_block{HideFlags:63,display:{Name:'[{"text":"Mushroom","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.8 with sand{HideFlags:63,display:{Name:'[{"text":"Desert","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=8}] enderchest.8 with sand{HideFlags:63,display:{Name:'[{"text":"Desert","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.9 with redstone_block{HideFlags:63,display:{Name:'[{"text":"Redstone","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=9}] enderchest.9 with redstone_block{HideFlags:63,display:{Name:'[{"text":"Redstone","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.10 with warped_nylium{HideFlags:63,display:{Name:'[{"text":"Warped","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=10}] enderchest.10 with warped_nylium{HideFlags:63,display:{Name:'[{"text":"Warped","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.11 with crimson_nylium{HideFlags:63,display:{Name:'[{"text":"Crimson","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=11}] enderchest.11 with crimson_nylium{HideFlags:63,display:{Name:'[{"text":"Crimson","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.12 with grass_block{HideFlags:63,display:{Name:'[{"text":"Floating Island","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=12}] enderchest.12 with grass_block{HideFlags:63,display:{Name:'[{"text":"Floating Island","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.13 with cake{HideFlags:63,display:{Name:'[{"text":"Cake","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=13}] enderchest.13 with cake{HideFlags:63,display:{Name:'[{"text":"Cake","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.14 with acacia_log{HideFlags:63,display:{Name:'[{"text":"Savannah","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=14}] enderchest.14 with acacia_log{HideFlags:63,display:{Name:'[{"text":"Savannah","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

# new 1.17 podiums

item replace entity @s enderchest.15 with copper_block{HideFlags:63,display:{Name:'[{"text":"Copper","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=15}] enderchest.15 with copper_block{HideFlags:63,display:{Name:'[{"text":"Copper","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.16 with chiseled_deepslate{HideFlags:63,display:{Name:'[{"text":"Sinister","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=16}] enderchest.16 with chiseled_deepslate{HideFlags:63,display:{Name:'[{"text":"Sinister","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.17 with amethyst_cluster{HideFlags:63,display:{Name:'[{"text":"Crystal Mine","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=17}] enderchest.17 with amethyst_cluster{HideFlags:63,display:{Name:'[{"text":"Crystal Mine","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.19 with dripstone_block{HideFlags:63,display:{Name:'[{"text":"Stalagmites","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=18}] enderchest.19 with dripstone_block{HideFlags:63,display:{Name:'[{"text":"Stalagmites","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.20 with white_banner{HideFlags:63,display:{Name:'[{"text":"Ship","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=19}] enderchest.20 with white_banner{HideFlags:63,display:{Name:'[{"text":"Ship","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.21 with end_portal_frame{HideFlags:63,display:{Name:'[{"text":"End Portal","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=20}] enderchest.21 with end_portal_frame{HideFlags:63,display:{Name:'[{"text":"End Portal","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.22 with pink_glazed_terracotta{HideFlags:63,display:{Name:'[{"text":"Sakura Tree","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=21}] enderchest.22 with pink_glazed_terracotta{HideFlags:63,display:{Name:'[{"text":"Sakura Tree","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.23 with melon{HideFlags:63,display:{Name:'[{"text":"Melon Stand","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=22}] enderchest.23 with melon{HideFlags:63,display:{Name:'[{"text":"Melon Stand","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.24 with stripped_spruce_log{HideFlags:63,display:{Name:'[{"text":"Shack","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=23}] enderchest.24 with stripped_spruce_log{HideFlags:63,display:{Name:'[{"text":"Shack","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.25 with red_concrete{HideFlags:63,display:{Name:'[{"text":"Car","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={podium=24}] enderchest.25 with red_concrete{HideFlags:63,display:{Name:'[{"text":"Car","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.26 with emerald{HideFlags:63,display:{Name:'[{"text":"Next","color":"#40ff00","italic":false,"bold":true}]'},clickable:1}

##legendary
item replace entity @s enderchest.18 with barrier{HideFlags:63,clickable:1,display:{Name:'[{"text":"Back","color":"#ff0000","italic":false,"bold":true}]'}}
