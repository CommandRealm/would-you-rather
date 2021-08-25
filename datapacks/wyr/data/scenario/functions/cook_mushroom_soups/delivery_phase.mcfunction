execute if score $soup_type cms_timer matches 0 as @a[tag=playing,team=cms,tag=cms_has_soup,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:mushroom_stew"}]}] run function scenario:cook_mushroom_soups/get_soup
execute if score $soup_type cms_timer matches 1 as @a[tag=playing,team=cms,tag=cms_has_soup,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:beetroot_soup"}]}] run function scenario:cook_mushroom_soups/get_soup
execute if score $soup_type cms_timer matches 2 as @a[tag=playing,team=cms,tag=cms_has_soup,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:rabbit_stew"}]}] run function scenario:cook_mushroom_soups/get_soup
execute if score $soup_type cms_timer matches 3 as @a[tag=playing,team=cms,tag=cms_has_soup,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:suspicious_stew"}]}] run function scenario:cook_mushroom_soups/get_soup

execute as @a[tag=playing,team=cms,tag=cms_has_soup,gamemode=adventure] at @s if entity @e[type=villager,tag=cms_first_customer,distance=..5] run function scenario:cook_mushroom_soups/delivered_soup