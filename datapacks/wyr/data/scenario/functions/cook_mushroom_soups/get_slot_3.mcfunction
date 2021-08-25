clear @s #minecraft:soup_ingredients{cms_slot:3}
clear @s #minecraft:soup_items{cms_item:4}

execute positioned ~ ~1 ~ run function scenario:cook_mushroom_soups/kill_glass_panes

execute if score $number cms_ingre_4 matches 0 run replaceitem entity @s hotbar.3 white_stained_glass_pane{cms_slot:3,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Red Mushroom","color":"red"}]'}}
execute if score $number cms_ingre_4 matches 1 run replaceitem entity @s hotbar.3 brown_stained_glass_pane{cms_slot:3,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Brown Mushroom","color":"#918050"}]'}}
execute if score $number cms_ingre_4 matches 2 run replaceitem entity @s hotbar.3 red_stained_glass_pane{cms_slot:3,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Crimson Mushroom","color":"dark_red"}]'}}
execute if score $number cms_ingre_4 matches 3 run replaceitem entity @s hotbar.3 light_blue_stained_glass_pane{cms_slot:3,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Warped Mushroom","color":"aqua"}]'}}
execute if score $number cms_ingre_4 matches 4 run replaceitem entity @s hotbar.3 orange_stained_glass_pane{cms_slot:3,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Carrot","color":"#f58a20"}]'}}
execute if score $number cms_ingre_4 matches 5 run replaceitem entity @s hotbar.3 yellow_stained_glass_pane{cms_slot:3,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Potato","color":"#fff7c9"}]'}}
execute if score $number cms_ingre_4 matches 6 run replaceitem entity @s hotbar.3 lime_stained_glass_pane{cms_slot:3,HideFlags:63,display:{Name:'[{"text":"Find: ","color":"#756538","italic":false},{"text":"Celery","color":"green"}]'}}