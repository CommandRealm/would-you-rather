scoreboard players set @s screen 0
function chest_menu:clear
replaceitem entity @s enderchest.10 diamond_helmet{HideFlags:63,display:{Name:'[{"text":"Cosmetics","color":"aqua","italic":false,"bold":true}]'},clickable:1}
replaceitem entity @s enderchest.12 book{HideFlags:63,display:{Name:'[{"text":"Tutorial","color":"blue","italic":false,"bold":true}]'},clickable:1}
replaceitem entity @s enderchest.14 nether_star{HideFlags:63,display:{Name:'[{"text":"Statistics","color":"green","italic":false,"bold":true}]'},clickable:1}
replaceitem entity @s enderchest.16 command_block{HideFlags:63,display:{Name:'[{"text":"Credits","color":"yellow","italic":false,"bold":true}]'},clickable:1}