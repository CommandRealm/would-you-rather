scoreboard players set @s screen 1
function chest_menu:clear
item replace entity @s enderchest.10 with quartz_pillar{HideFlags:63,display:{Name:'[{"text":"Podiums","color":"#0eedcf","italic":false,"bold":true}]',Lore:['[{"text":"Podiums are what you stand","italic":true,"color":"gray"}]','[{"text":"on during the show.","italic":true,"color":"gray"}]']},clickable:1}
item replace entity @s enderchest.12 with light_blue_banner{HideFlags:63,display:{Name:'[{"text":"Banners","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"Banners will appear in the lobby","italic":true,"color":"gray"}]','[{"text":"and on stage. After a game, they will","italic":true,"color":"gray"}]','[{"text":"change to the winner\'s selected banner.","color":"gray","italic":true}]']},clickable:1}
item replace entity @s enderchest.14 with paper{HideFlags:63,display:{Name:'[{"text":"Fans","color":"#1de027","italic":false,"bold":true}]',Lore:['[{"text":"Fans will appear in the stands","italic":true,"color":"gray"}]','[{"text":"and cheer you on.","italic":true,"color":"gray"}]']},clickable:1}

item replace entity @s enderchest.16 with gold_nugget{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],clickable:1,HideFlags:63,display:{Name:'[{"text":"Unlocks","color":"gold","bold":true,"italic":false}]'}}

item replace entity @s enderchest.18 with barrier{HideFlags:63,clickable:1,display:{Name:'[{"text":"Back","color":"#ff0000","italic":false,"bold":true}]'}}