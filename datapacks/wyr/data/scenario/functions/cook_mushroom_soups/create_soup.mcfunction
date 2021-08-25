scoreboard objectives remove cms_ingre_1
scoreboard objectives remove cms_ingre_2
scoreboard objectives remove cms_ingre_3
scoreboard objectives remove cms_ingre_4
scoreboard objectives remove cms_ingre_5
scoreboard objectives add cms_ingre_1 dummy
scoreboard objectives add cms_ingre_2 dummy
scoreboard objectives add cms_ingre_3 dummy
scoreboard objectives add cms_ingre_4 dummy
scoreboard objectives add cms_ingre_5 dummy
scoreboard players set $number cms_ingre_1 -1
scoreboard players set $number cms_ingre_2 -1
scoreboard players set $number cms_ingre_3 -1
scoreboard players set $number cms_ingre_4 -1
scoreboard players set $number cms_ingre_5 -1

##Generating Number of Mushrooms in Recipe
scoreboard players set $mod random 10
function random:random
scoreboard players set $mushroom cms_soups_left 2
execute if score $rand random matches 0..1 run scoreboard players remove $mushroom cms_soups_left 1
execute if score $rand random matches 2..3 run scoreboard players add $mushroom cms_soups_left 1

##Generating number of vegetables in Recipe
scoreboard players set $mod random 6
function random:random
scoreboard players set $vegetable cms_soups_left 1
execute if score $rand random matches 0..1 run scoreboard players add $mushroom cms_soups_left 1

##Generating ingredients

##Ingredient 1 possibilities
scoreboard players set $mod random 4
function random:random
execute if score $mushroom cms_soups_left matches 1.. run scoreboard players operation $number cms_ingre_1 = $rand random
execute if score $mushroom cms_soups_left matches 1.. run scoreboard players remove $mushroom cms_soups_left 1


##Ingredient 2 possibilities
scoreboard players set $mod random 4
function random:random
execute if score $mushroom cms_soups_left matches 1.. run scoreboard players operation $number cms_ingre_2 = $rand random
execute if score $mushroom cms_soups_left matches 1.. run scoreboard players remove $mushroom cms_soups_left 1

scoreboard players set $mod random 3
function random:random
scoreboard players add $rand random 4
execute if score $vegetable cms_soups_left matches 1.. if score $number cms_ingre_2 matches -1 run scoreboard players operation $number cms_ingre_2 = $rand random
execute if score $vegetable cms_soups_left matches 1.. if score $number cms_ingre_2 matches 4.. run scoreboard players remove $vegetable cms_soups_left 1

##Ingredient 3 possibilities
scoreboard players set $mod random 4
function random:random
execute if score $mushroom cms_soups_left matches 1.. run scoreboard players operation $number cms_ingre_3 = $rand random
execute if score $mushroom cms_soups_left matches 1.. run scoreboard players remove $mushroom cms_soups_left 1

scoreboard players set $mod random 3
function random:random
scoreboard players add $rand random 4
execute if score $vegetable cms_soups_left matches 1.. if score $number cms_ingre_3 matches -1 run scoreboard players operation $number cms_ingre_3 = $rand random
execute if score $vegetable cms_soups_left matches 1.. if score $number cms_ingre_3 matches 4.. run scoreboard players remove $vegetable cms_soups_left 1


##Ingredient 4 possibilities

scoreboard players set $mod random 3
function random:random
scoreboard players add $rand random 4
execute if score $vegetable cms_soups_left matches 1.. if score $number cms_ingre_4 matches -1 run scoreboard players operation $number cms_ingre_4 = $rand random
execute if score $vegetable cms_soups_left matches 1.. if score $number cms_ingre_4 matches 4.. run scoreboard players remove $vegetable cms_soups_left 1


##Ingredient 5 possibilities
scoreboard players set $mod random 3
function random:random
scoreboard players add $rand random 4
execute if score $vegetable cms_soups_left matches 1.. if score $number cms_ingre_5 matches -1 run scoreboard players operation $number cms_ingre_5 = $rand random
execute if score $vegetable cms_soups_left matches 1.. if score $number cms_ingre_5 matches 4.. run scoreboard players remove $vegetable cms_soups_left 1

##Display and create title

summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Big Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Thick Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Red Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Regular Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Steamy Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Magical Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Shroom Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Compact Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Tactical Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Dark Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Bright Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Mushy Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Sweet Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Bitter Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Salty Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Normal Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Odd Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Blast Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Hippie Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Reign Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Fun Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Soupy Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Ender Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Typical Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Fabulous Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Realm Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Fantasy Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Party Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Buff Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Fire Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Task Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Cool Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Quote Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Addictive Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Flex Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Resource Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Pack Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Small Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Tiny Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Triangle Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"October Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"July Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Blue Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Purple Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Green Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Smelly Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Mine Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Clock Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Time Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Delicious Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Numbers Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Uniform Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Strategical Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Tally Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Gold Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Perfect Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Terrible Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Double Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Delightful Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Brown Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Edible Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Wedding Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Hot Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Cold Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Old Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Young Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Special Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Broth Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Questionable Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Surprise Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Hope Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Wind Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Dessert Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Cheat Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Glitch Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Green Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Purple Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Orange Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Yellow Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Indigo Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Terrific Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Scary Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Plastic Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Moving Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Great Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Free Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Cheap Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Imperfect Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Nasty Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Ready Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Awesome Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Row Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Way Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Vegan Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Yummy Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Birthday Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Ice Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Fan Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Punch Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Creamy Soup"}]'}
summon area_effect_cloud 39000 66 0 {Duration:100000,Tags:["cms_soup_title"],CustomName:'[{"text":"Hefty Soup"}]'}

tag @e[type=area_effect_cloud,tag=cms_soup_title,sort=random,limit=1] add cms_safe
kill @e[type=area_effect_cloud,tag=cms_soup_title,tag=!cms_safe]
tag @e[type=area_effect_cloud,tag=cms_soup_title,sort=random,limit=1] remove cms_safe
##Display Ingredients

kill @e[type=area_effect_cloud,tag=cms_ingre_text]

execute if score $number cms_ingre_1 matches 0 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_1"],CustomName:'[{"text":"Red Mushroom","color":"red"}]'}
execute if score $number cms_ingre_1 matches 1 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_1"],CustomName:'[{"text":"Brown Mushroom","color":"#918050"}]'}
execute if score $number cms_ingre_1 matches 2 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_1"],CustomName:'[{"text":"Crimson Mushroom","color":"dark_red"}]'}
execute if score $number cms_ingre_1 matches 3 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_1"],CustomName:'[{"text":"Warped Mushroom","color":"aqua"}]'}

execute if score $number cms_ingre_2 matches 0 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_2"],CustomName:'[{"text":"Red Mushroom","color":"red"}]'}
execute if score $number cms_ingre_2 matches 1 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_2"],CustomName:'[{"text":"Brown Mushroom","color":"#918050"}]'}
execute if score $number cms_ingre_2 matches 2 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_2"],CustomName:'[{"text":"Crimson Mushroom","color":"dark_red"}]'}
execute if score $number cms_ingre_2 matches 3 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_2"],CustomName:'[{"text":"Warped Mushroom","color":"aqua"}]'}

execute if score $number cms_ingre_3 matches 0 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_3"],CustomName:'[{"text":"Red Mushroom","color":"red"}]'}
execute if score $number cms_ingre_3 matches 1 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_3"],CustomName:'[{"text":"Brown Mushroom","color":"#918050"}]'}
execute if score $number cms_ingre_3 matches 2 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_3"],CustomName:'[{"text":"Crimson Mushroom","color":"dark_red"}]'}
execute if score $number cms_ingre_3 matches 3 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_3"],CustomName:'[{"text":"Warped Mushroom","color":"aqua"}]'}


execute if score $number cms_ingre_2 matches 4 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_2"],CustomName:'[{"text":"A Carrot","color":"#f58a20"}]'}
execute if score $number cms_ingre_2 matches 5 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_2"],CustomName:'[{"text":"A Potato","color":"#fff7c9"}]'}
execute if score $number cms_ingre_2 matches 6 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_2"],CustomName:'[{"text":"Celery","color":"green"}]'}

execute if score $number cms_ingre_3 matches 4 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_3"],CustomName:'[{"text":"A Carrot","color":"#f58a20"}]'}
execute if score $number cms_ingre_3 matches 5 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_3"],CustomName:'[{"text":"A Potato","color":"#fff7c9"}]'}
execute if score $number cms_ingre_3 matches 6 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_3"],CustomName:'[{"text":"Celery","color":"green"}]'}

execute if score $number cms_ingre_4 matches 4 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_4"],CustomName:'[{"text":"A Carrot","color":"#f58a20"}]'}
execute if score $number cms_ingre_4 matches 5 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_4"],CustomName:'[{"text":"A Potato","color":"#fff7c9"}]'}
execute if score $number cms_ingre_4 matches 6 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_4"],CustomName:'[{"text":"Celery","color":"green"}]'}

execute if score $number cms_ingre_5 matches 4 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_5"],CustomName:'[{"text":"A Carrot","color":"#f58a20"}]'}
execute if score $number cms_ingre_5 matches 5 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_5"],CustomName:'[{"text":"A Potato","color":"#fff7c9"}]'}
execute if score $number cms_ingre_5 matches 6 run summon area_effect_cloud 39000 0 0 {Duration:100000,Tags:["cms_ingre_text","cms_ingre_5"],CustomName:'[{"text":"Celery","color":"green"}]'}





