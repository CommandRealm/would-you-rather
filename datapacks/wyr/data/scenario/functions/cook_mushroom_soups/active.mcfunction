#timer:
scoreboard players remove $time cms_timer 1
scoreboard players operation : cms_timer = $time cms_timer
scoreboard players operation : cms_timer /= $20 number
scoreboard players add : cms_timer 1
execute unless score : cms_timer = : cms_seconds run scoreboard players operation : cms_seconds = : cms_timer





#activity:
execute if score $cms active_scenario matches 1 if score $time cms_timer matches 1.. run schedule function scenario:cook_mushroom_soups/active 1t
execute if score $cms active_scenario matches 1 unless entity @a[team=cms] run function scenario:cook_mushroom_soups/end




##order process
execute if score $number cms_soups_left matches 1.. run scoreboard players add $order cms_timer 1
execute if score $order cms_timer matches 1 if score $number cms_soups_left matches ..2 run function scenario:cook_mushroom_soups/move_villagers
execute if score $order cms_timer matches 20 run function scenario:cook_mushroom_soups/place_order
execute if score $order cms_timer matches 40 run function scenario:cook_mushroom_soups/display_soup_name
execute if score $order cms_timer matches 60 run function scenario:cook_mushroom_soups/display_ingredients
execute if score $order cms_timer matches 60..10000 run function scenario:cook_mushroom_soups/harvest_phase
execute if score $order cms_timer matches 10001.. run function scenario:cook_mushroom_soups/delivery_phase


##fill 39029 66 0 39031 66 0 minecraft:farmland replace dirt
##setblock 39032 66 1 minecraft:farmland
##fill 39028 65 1 39031 65 1 minecraft:farmland replace dirt
##
##fill 39029 65 2 39032 65 3 minecraft:farmland replace dirt
##
##fill 39031 65 4 39030 65 4 minecraft:farmland replace dirt

execute as @a[tag=playing,team=cms,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:stone_hoe"}]}] run function scenario:cook_mushroom_soups/get_hoe

execute if score $time cms_timer matches 0 run function scenario:cook_mushroom_soups/timer_over