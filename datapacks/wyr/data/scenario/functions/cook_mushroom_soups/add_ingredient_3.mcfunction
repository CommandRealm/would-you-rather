scoreboard players set $number cms_ingre_3 -1000
tag @a[tag=playing,team=cms,gamemode=adventure,nbt={Inventory:[{tag:{cms_item:3}}]}] add cms_has_duplicate
item replace entity @a[tag=playing,team=cms] hotbar.2 with air
clear @a[tag=playing,team=cms] #minecraft:soup_items{cms_item:3}
execute if entity @s[nbt={Item:{id:"minecraft:red_mushroom"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:white_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/get_red_mushroom
execute if entity @s[nbt={Item:{id:"minecraft:brown_mushroom"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:brown_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/get_brown_mushroom
execute if entity @s[nbt={Item:{id:"minecraft:crimson_fungus"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:red_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/get_crimson_mushroom
execute if entity @s[nbt={Item:{id:"minecraft:warped_fungus"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:light_blue_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/get_warped_mushroom
execute if entity @s[nbt={Item:{id:"minecraft:carrot"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:orange_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/harvest_carrot
execute if entity @s[nbt={Item:{id:"minecraft:potato"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:yellow_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/harvest_potato
execute if entity @s[nbt={Item:{id:"minecraft:bamboo"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:lime_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/harvest_celery

tag @a[tag=playing,team=cms,gamemode=adventure] add cms_completed_3
tag @s add cms_added_to_soup
execute if score $number cms_ingre_1 matches ..-1 if score $number cms_ingre_2 matches ..-1 if score $number cms_ingre_3 matches ..-1 if score $number cms_ingre_4 matches ..-1 if score $number cms_ingre_5 matches ..-1 run function scenario:cook_mushroom_soups/completed_soup