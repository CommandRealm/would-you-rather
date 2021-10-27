##Starting the ender chest cosmetics screen

##Clear Function
function chest_menu:clear

##Setting screen
scoreboard players set @s screen 18


##Locked

item replace entity @s enderchest.11 with iron_bars{invalid_click:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s enderchest.12 with iron_bars{invalid_click:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s enderchest.13 with iron_bars{invalid_click:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]'}}

item replace entity @s enderchest.14 with iron_bars{invalid_click:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s enderchest.15 with iron_bars{invalid_click:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Locked","bold":false,"italic":false,"color":"red"}]'}}

##Unlocked

item replace entity @s[advancements={advancements:lobby_all=true}] enderchest.11 with name_tag{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Lobby Prefix","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing a row of advancements.","italic":false,"color":"gray"}]']}}
item replace entity @s[advancements={advancements:wins_all=true}] enderchest.12 with globe_banner_pattern{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Galaxy Banner","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing a row of advancements.","italic":false,"color":"gray"}]']}}
item replace entity @s[advancements={advancements:scenario_all=true}] enderchest.13 with note_block{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Music Podium","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing a row of advancements.","italic":false,"color":"gray"}]']}}
item replace entity @s[advancements={advancements:game_all=true}] enderchest.14 with pink_wool{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Mia Fan","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing a row of advancements.","italic":false,"color":"gray"}]']}}
item replace entity @s[advancements={minecraft:completionist/completionist=true}] enderchest.15 with gold_ingot{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Completionist Particles","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing all advancements.","italic":false,"color":"gray"}]']}}



##Selected

item replace entity @s[team=unlock] enderchest.11 with name_tag{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Lobby Prefix","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing a row of advancements.","italic":false,"color":"gray"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}
item replace entity @s[scores={banners=16}] enderchest.12 with globe_banner_pattern{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Galaxy Banner","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing a row of advancements.","italic":false,"color":"gray"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}
item replace entity @s[scores={podium=51}] enderchest.13 with note_block{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Music Podium","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing a row of advancements.","italic":false,"color":"gray"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}
item replace entity @s[scores={fans=18}] enderchest.14 with pink_wool{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Mia Fan","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing a row of advancements.","italic":false,"color":"gray"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}
item replace entity @s[tag=!no_completionist_particles,advancements={minecraft:completionist/completionist=true}] enderchest.15 with gold_ingot{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":"Completionist Particles","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing all advancements.","italic":false,"color":"gray"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

