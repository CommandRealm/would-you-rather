##Glass panes
execute as @a[tag=playing,team=cms,gamemode=adventure,tag=!cms_has_0,tag=!cms_completed_1] at @s unless entity @s[nbt={Inventory:[{Slot:0b,tag:{cms_slot:0}}]}] run function scenario:cook_mushroom_soups/get_slot_0

execute as @a[tag=playing,team=cms,gamemode=adventure,tag=!cms_has_1,tag=!cms_completed_2] at @s unless entity @s[nbt={Inventory:[{Slot:1b,tag:{cms_slot:1}}]}] run function scenario:cook_mushroom_soups/get_slot_1

execute if entity @e[type=area_effect_cloud,tag=cms_ingre_3,limit=1] as @a[tag=playing,team=cms,gamemode=adventure,tag=!cms_has_2,tag=!cms_completed_3] at @s unless entity @s[nbt={Inventory:[{Slot:2b,tag:{cms_slot:2}}]}] run function scenario:cook_mushroom_soups/get_slot_2

execute if entity @e[type=area_effect_cloud,tag=cms_ingre_4,limit=1] as @a[tag=playing,team=cms,gamemode=adventure,tag=!cms_has_3,tag=!cms_completed_4] at @s unless entity @s[nbt={Inventory:[{Slot:3b,tag:{cms_slot:3}}]}] run function scenario:cook_mushroom_soups/get_slot_3

execute if entity @e[type=area_effect_cloud,tag=cms_ingre_5,limit=1] as @a[tag=playing,team=cms,gamemode=adventure,tag=!cms_has_4,tag=!cms_completed_5] at @s unless entity @s[nbt={Inventory:[{Slot:4b,tag:{cms_slot:4}}]}] run function scenario:cook_mushroom_soups/get_slot_4



##Collecting

execute as @a[tag=playing,gamemode=adventure,team=cms,x=39027,y=66,z=-12,distance=..3,nbt={Inventory:[{id:"minecraft:white_stained_glass_pane"}]}] at @s if entity @e[type=item,distance=..1,tag=cms_mushroom_item] unless entity @s[nbt={Inventory:[{id:"minecraft:red_mushroom"}]}] run function scenario:cook_mushroom_soups/get_red_mushroom

execute as @a[tag=playing,gamemode=adventure,team=cms,x=39030,y=70,z=25,distance=..3,nbt={Inventory:[{id:"minecraft:brown_stained_glass_pane"}]}] at @s if entity @e[type=item,distance=..1,tag=cms_mushroom_item] unless entity @s[nbt={Inventory:[{id:"minecraft:brown_mushroom"}]}] run function scenario:cook_mushroom_soups/get_brown_mushroom

execute as @a[tag=playing,gamemode=adventure,team=cms,x=38975,y=67,z=22,distance=..3,nbt={Inventory:[{id:"minecraft:red_stained_glass_pane"}]}] at @s if entity @e[type=item,distance=..1,tag=cms_mushroom_item] unless entity @s[nbt={Inventory:[{id:"minecraft:crimson_fungus"}]}] run function scenario:cook_mushroom_soups/get_crimson_mushroom

execute as @a[tag=playing,gamemode=adventure,team=cms,x=38984,y=66,z=-26,distance=..3,nbt={Inventory:[{id:"minecraft:light_blue_stained_glass_pane"}]}] at @s if entity @e[type=item,distance=..1,tag=cms_mushroom_item] unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus"}]}] run function scenario:cook_mushroom_soups/get_warped_mushroom

##

##Harvesting
execute as @a[scores={cms_farm_carrot=1..},gamemode=adventure,team=cms,tag=playing] at @s run function scenario:cook_mushroom_soups/harvest_carrot
execute as @a[scores={cms_farm_potato=1..},gamemode=adventure,team=cms,tag=playing] at @s run function scenario:cook_mushroom_soups/harvest_potato
execute as @a[scores={cms_farm_celery=1..},gamemode=adventure,team=cms,tag=playing] at @s run function scenario:cook_mushroom_soups/harvest_celery

##Trackers
execute as @a[tag=playing,team=cms,nbt={SelectedItem:{id:"minecraft:white_stained_glass_pane"}},gamemode=adventure] at @s run function scenario:cook_mushroom_soups/call_red_mushroom_tracker
execute as @a[tag=playing,team=cms,nbt={SelectedItem:{id:"minecraft:brown_stained_glass_pane"}},gamemode=adventure] at @s run function scenario:cook_mushroom_soups/call_brown_mushroom_tracker
execute as @a[tag=playing,team=cms,nbt={SelectedItem:{id:"minecraft:red_stained_glass_pane"}},gamemode=adventure] at @s run function scenario:cook_mushroom_soups/call_crimson_mushroom_tracker
execute as @a[tag=playing,team=cms,nbt={SelectedItem:{id:"minecraft:light_blue_stained_glass_pane"}},gamemode=adventure] at @s run function scenario:cook_mushroom_soups/call_warped_mushroom_tracker
execute as @a[tag=playing,team=cms,nbt={SelectedItem:{id:"minecraft:orange_stained_glass_pane"}},gamemode=adventure] at @s run function scenario:cook_mushroom_soups/call_carrot_tracker
execute as @a[tag=playing,team=cms,nbt={SelectedItem:{id:"minecraft:yellow_stained_glass_pane"}},gamemode=adventure] at @s run function scenario:cook_mushroom_soups/call_potato_tracker
execute as @a[tag=playing,team=cms,nbt={SelectedItem:{id:"minecraft:lime_stained_glass_pane"}},gamemode=adventure] at @s run function scenario:cook_mushroom_soups/call_celery_tracker



##Remove tags and kill items
data merge entity @e[type=item,nbt={Item:{id:"minecraft:red_mushroom"}},x=39000,y=65,z=-3,distance=5..,limit=1] {cms_is_item:1}
data merge entity @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom"}},x=39000,y=65,z=-3,distance=5..,limit=1] {cms_is_item:1}
data merge entity @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"}},x=39000,y=65,z=-3,distance=5..,limit=1] {cms_is_item:1}
data merge entity @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"}},x=39000,y=65,z=-3,distance=5..,limit=1] {cms_is_item:1}
data merge entity @e[type=item,nbt={Item:{id:"minecraft:carrot"}},x=39000,y=65,z=-3,distance=5..,limit=1] {cms_is_item:1}
data merge entity @e[type=item,nbt={Item:{id:"minecraft:potato"}},x=39000,y=65,z=-3,distance=5..,limit=1] {cms_is_item:1}
data merge entity @e[type=item,nbt={Item:{id:"minecraft:bamboo"}},x=39000,y=65,z=-3,distance=5..,limit=1] {cms_is_item:1}
kill @e[type=item,nbt={Item:{tag:{cms_is_item:1}}},x=39000,y=65,z=-3,distance=7..]

execute as @a[team=cms,tag=playing,tag=cms_has_0] at @s unless entity @s[nbt={Inventory:[{tag:{cms_item:1}}]}] run tag @s remove cms_has_0
execute as @a[team=cms,tag=playing,tag=cms_has_1] at @s unless entity @s[nbt={Inventory:[{tag:{cms_item:2}}]}] run tag @s remove cms_has_1
execute as @a[team=cms,tag=playing,tag=cms_has_2] at @s unless entity @s[nbt={Inventory:[{tag:{cms_item:3}}]}] run tag @s remove cms_has_2
execute as @a[team=cms,tag=playing,tag=cms_has_3] at @s unless entity @s[nbt={Inventory:[{tag:{cms_item:4}}]}] run tag @s remove cms_has_3
execute as @a[team=cms,tag=playing,tag=cms_has_4] at @s unless entity @s[nbt={Inventory:[{tag:{cms_item:5}}]}] run tag @s remove cms_has_4


execute if entity @a[team=cms,tag=playing,nbt={Inventory:[{tag:{cms_is_item:1}}]},gamemode=adventure,x=39000,y=65,z=-3,distance=..5] run function scenario:cook_mushroom_soups/show_drop_title



execute as @e[type=item,nbt={Item:{tag:{cms_is_item:1}}},x=39000,y=65,z=-3,distance=..7] at @s run function scenario:cook_mushroom_soups/add_item_to_soup