scoreboard players set $drop cms_soups_left 100
execute if entity @s[nbt={Item:{id:"minecraft:red_mushroom"}}] run scoreboard players set $drop cms_soups_left 0
execute if entity @s[nbt={Item:{id:"minecraft:brown_mushroom"}}] run scoreboard players set $drop cms_soups_left 1
execute if entity @s[nbt={Item:{id:"minecraft:crimson_fungus"}}] run scoreboard players set $drop cms_soups_left 2
execute if entity @s[nbt={Item:{id:"minecraft:warped_fungus"}}] run scoreboard players set $drop cms_soups_left 3
execute if entity @s[nbt={Item:{id:"minecraft:carrot"}}] run scoreboard players set $drop cms_soups_left 4
execute if entity @s[nbt={Item:{id:"minecraft:potato"}}] run scoreboard players set $drop cms_soups_left 5
execute if entity @s[nbt={Item:{id:"minecraft:bamboo"}}] run scoreboard players set $drop cms_soups_left 6


execute if entity @s[tag=!cms_added_to_soup] if score $drop cms_soups_left = $number cms_ingre_1 run function scenario:cook_mushroom_soups/add_ingredient_1
execute if entity @s[tag=!cms_added_to_soup] if score $drop cms_soups_left = $number cms_ingre_2 run function scenario:cook_mushroom_soups/add_ingredient_2
execute if entity @s[tag=!cms_added_to_soup] if score $drop cms_soups_left = $number cms_ingre_3 run function scenario:cook_mushroom_soups/add_ingredient_3
execute if entity @s[tag=!cms_added_to_soup] if score $drop cms_soups_left = $number cms_ingre_4 run function scenario:cook_mushroom_soups/add_ingredient_4
execute if entity @s[tag=!cms_added_to_soup] if score $drop cms_soups_left = $number cms_ingre_5 run function scenario:cook_mushroom_soups/add_ingredient_5
execute if entity @s[tag=!cms_added_to_soup] run function scenario:cook_mushroom_soups/invalid_item
kill @s

playsound minecraft:block.slime_block.hit master @a ~ ~ ~ 1 1.5