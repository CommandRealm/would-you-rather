clear @s mushroom_stew
clear @s beetroot_soup
clear @s rabbit_stew
clear @s suspicious_stew

kill @e[type=item,distance=..1.5]
execute if score $soup_type cms_timer matches 0 run loot replace entity @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] hotbar.8 loot minecraft:cms/mushroom
execute if score $soup_type cms_timer matches 1 run loot replace entity @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] hotbar.8 loot minecraft:cms/beetroot
execute if score $soup_type cms_timer matches 2 run loot replace entity @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] hotbar.8 loot minecraft:cms/rabbit
execute if score $soup_type cms_timer matches 3 run loot replace entity @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] hotbar.8 loot minecraft:cms/suspicious