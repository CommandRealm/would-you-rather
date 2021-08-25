##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=cms] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=cms_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=cms] run schedule function scenario:cook_mushroom_soups/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=5}] run title @a[team=cms,tag=playing,tag=!no_tutorial] title [{"selector":"@e[type=area_effect_cloud,name=\"Cook mushroom soups\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=5}] run title @a[team=cms,tag=playing,tag=!no_tutorial] subtitle [{"text":"| ","color":"dark_green"},{"text":"Tutorial","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=5}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=5}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=75}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Cook mushroom soups\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=75}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=90}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Customers will order soups.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=90}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=140}] run tp @e[type=armor_stand,tag=cms_tutorial] 39007 68 7 155 10
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=140}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Glass panes in your inventory represent the ingredients for the soup.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=140}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=210}] run tp @e[type=armor_stand,tag=cms_tutorial] 38987 67 -18 160 5
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=210}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Hold a glass pane to show the location of the ingredient.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=210}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=280}] run tp @e[type=armor_stand,tag=cms_tutorial] 38985 68 -26 90 70
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=280}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Walk near a mushroom in item form to pick it up.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=280}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=350}] run tp @e[type=armor_stand,tag=cms_tutorial] 39026 69 2 -90 50
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=350}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Crops, on the other hand, need to be harvested.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=350}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=420}] run tp @e[type=armor_stand,tag=cms_tutorial] 38998 66.5 0 -146 25
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=420}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"You can only carry one ingredient. Take each one and throw it in the cauldron in the middle.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=420}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=550}] run tp @e[type=armor_stand,tag=cms_tutorial] 38994 66 -2 -90 5
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=550}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Once all the ingredients are in the soup, one player will receive it.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=550}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=630}] run tp @e[type=armor_stand,tag=cms_tutorial] 38994 72 -2 -13.5 40
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=630}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"That player needs to deliver it to the customer.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=630}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=700}] run tp @e[type=armor_stand,tag=cms_tutorial] 39022 95 -2 90 60
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=700}] run tellraw @a[team=cms,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"Complete and deliver three soups before time runs out to beat the scenario.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=700}] as @a[team=cms,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=770}] run function scenario:cook_mushroom_soups/tutorial_end


##Effects:


execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=210..279}] run scoreboard players set $tutorial cms_timer 100
execute if entity @a[tag=in_tutorial,tag=playing,team=cms,scores={tutorial=210..279}] positioned 38984 67 -26 rotated -30 0 run function scenario:cook_mushroom_soups/tutorial_tracker