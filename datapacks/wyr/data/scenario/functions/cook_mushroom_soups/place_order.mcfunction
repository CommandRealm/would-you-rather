function scenario:cook_mushroom_soups/create_soup
scoreboard players set $mod random 4
function random:random
execute if score $rand random matches 0 run tellraw @a[tag=playing,team=cms] [{"text":"<","color":"#756538"},{"text":"Customer","color":"gray"},{"text":">","color":"#756538"},{"text":" May I please have the ","color":"white"},{"selector":"@e[type=area_effect_cloud,tag=cms_soup_title]"},{"text":"?","color":"white"}]
execute if score $rand random matches 1 run tellraw @a[tag=playing,team=cms] [{"text":"<","color":"#756538"},{"text":"Customer","color":"gray"},{"text":">","color":"#756538"},{"text":" Can I get the ","color":"white"},{"selector":"@e[type=area_effect_cloud,tag=cms_soup_title]"},{"text":"?","color":"white"}]
execute if score $rand random matches 2 run tellraw @a[tag=playing,team=cms] [{"text":"<","color":"#756538"},{"text":"Customer","color":"gray"},{"text":">","color":"#756538"},{"text":" Please make me the ","color":"white"},{"selector":"@e[type=area_effect_cloud,tag=cms_soup_title]"},{"text":".","color":"white"}]
execute if score $rand random matches 3 run tellraw @a[tag=playing,team=cms] [{"text":"<","color":"#756538"},{"text":"Customer","color":"gray"},{"text":">","color":"#756538"},{"text":" I want the ","color":"white"},{"selector":"@e[type=area_effect_cloud,tag=cms_soup_title]"},{"text":".","color":"white"}]
execute as @a[tag=playing,team=cms] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 10000 1


tag @a remove cms_has_0
tag @a remove cms_has_1
tag @a remove cms_has_2
tag @a remove cms_has_3
tag @a remove cms_has_4
tag @a remove cms_has_soup
tag @a remove cms_completed_1
tag @a remove cms_completed_2
tag @a remove cms_completed_3
tag @a remove cms_completed_4
tag @a remove cms_completed_5

scoreboard objectives remove cms_farm_carrot
scoreboard objectives remove cms_farm_potato
scoreboard objectives remove cms_farm_celery

scoreboard objectives add cms_farm_carrot minecraft.mined:minecraft.carrots
scoreboard objectives add cms_farm_potato minecraft.mined:minecraft.potatoes
scoreboard objectives add cms_farm_celery minecraft.mined:minecraft.wheat

