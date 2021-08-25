scoreboard players set $number cms_ingre_1 -1000


tag @a[tag=playing,team=cms,gamemode=adventure,nbt={Inventory:[{tag:{cms_item:1}}]}] add cms_has_duplicate
replaceitem entity @a[tag=playing,team=cms] hotbar.0 air
clear @a[tag=playing,team=cms] #minecraft:soup_items{cms_item:1}
execute if entity @s[nbt={Item:{id:"minecraft:red_mushroom"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:white_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/get_red_mushroom
execute if entity @s[nbt={Item:{id:"minecraft:brown_mushroom"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:brown_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/get_brown_mushroom
execute if entity @s[nbt={Item:{id:"minecraft:crimson_fungus"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:red_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/get_crimson_mushroom
execute if entity @s[nbt={Item:{id:"minecraft:warped_fungus"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:light_blue_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/get_warped_mushroom
execute if entity @s[nbt={Item:{id:"minecraft:carrot"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:orange_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/harvest_carrot
execute if entity @s[nbt={Item:{id:"minecraft:potato"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:yellow_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/harvest_potato
execute if entity @s[nbt={Item:{id:"minecraft:bamboo"}}] as @a[tag=cms_has_duplicate,tag=playing,gamemode=adventure,team=cms,nbt={Inventory:[{id:"minecraft:lime_stained_glass_pane"}]}] at @s run function scenario:cook_mushroom_soups/harvest_celery


tag @a[tag=playing,team=cms,gamemode=adventure] add cms_completed_1
tag @s add cms_added_to_soup
tag @a remove cms_has_duplicate
execute if score $number cms_ingre_1 matches ..-1 if score $number cms_ingre_2 matches ..-1 if score $number cms_ingre_3 matches ..-1 if score $number cms_ingre_4 matches ..-1 if score $number cms_ingre_5 matches ..-1 run function scenario:cook_mushroom_soups/completed_soup