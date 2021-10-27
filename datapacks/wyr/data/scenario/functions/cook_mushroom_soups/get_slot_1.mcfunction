clear @s #minecraft:soup_ingredients{cms_slot:1}
clear @s #minecraft:soup_items{cms_item:2}

execute positioned ~ ~1 ~ run function scenario:cook_mushroom_soups/kill_glass_panes

execute if score $number cms_ingre_2 matches 0 run item replace entity @s hotbar.1 with white_stained_glass_pane{cms_slot:1,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Red Mushroom","color":"red"}]'}}
execute if score $number cms_ingre_2 matches 1 run item replace entity @s hotbar.1 with brown_stained_glass_pane{cms_slot:1,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Brown Mushroom","color":"#918050"}]'}}
execute if score $number cms_ingre_2 matches 2 run item replace entity @s hotbar.1 with red_stained_glass_pane{cms_slot:1,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Crimson Mushroom","color":"dark_red"}]'}}
execute if score $number cms_ingre_2 matches 3 run item replace entity @s hotbar.1 with light_blue_stained_glass_pane{cms_slot:1,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Warped Mushroom","color":"aqua"}]'}}
execute if score $number cms_ingre_2 matches 4 run item replace entity @s hotbar.1 with orange_stained_glass_pane{cms_slot:1,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Carrot","color":"#f58a20"}]'}}
execute if score $number cms_ingre_2 matches 5 run item replace entity @s hotbar.1 with yellow_stained_glass_pane{cms_slot:1,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Potato","color":"#fff7c9"}]'}}
execute if score $number cms_ingre_2 matches 6 run item replace entity @s hotbar.1 with lime_stained_glass_pane{cms_slot:1,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Celery","color":"green"}]'}}