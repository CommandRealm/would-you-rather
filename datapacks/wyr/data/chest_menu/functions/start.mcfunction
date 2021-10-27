scoreboard players set @s screen 0
function chest_menu:clear
item replace entity @s enderchest.10 with diamond_helmet{HideFlags:63,display:{Name:'[{"text":"Cosmetics","color":"aqua","italic":false,"bold":true}]'},clickable:1}
item replace entity @s enderchest.12 with book{HideFlags:63,display:{Name:'[{"text":"Tutorial","color":"blue","italic":false,"bold":true}]'},clickable:1}
item replace entity @s enderchest.14 with nether_star{HideFlags:63,display:{Name:'[{"text":"Statistics","color":"green","italic":false,"bold":true}]'},clickable:1}
item replace entity @s enderchest.16 with command_block{HideFlags:63,display:{Name:'[{"text":"Credits","color":"yellow","italic":false,"bold":true}]'},clickable:1}


execute unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] run item replace entity @s enderchest.26 with written_book{clickable:1,HideFlags:63,display:{Name:'[{"text":"Titles","bold":true,"italic":false,"color":"white"}]'}}
