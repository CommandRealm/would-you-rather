clear @s mushroom_stew
clear @s rabbit_stew
clear @s beetroot_soup
clear @s suspicious_stew
tellraw @a[tag=playing,team=cms] [{"text":"<","color":"#756538"},{"text":"Customer","color":"gray"},{"text":">","color":"#756538"},{"text":" Thank you!","color":"white"}]
playsound minecraft:entity.player.levelup master @a[tag=playing,team=cms] ~ ~ ~ 100000 0.6
playsound minecraft:entity.villager.yes master @a[tag=playing,team=cms] ~ ~ ~ 100000 1
scoreboard players set $order cms_timer -40
scoreboard players remove $number cms_soups_left 1
execute if score $number cms_soups_left matches 0 as @a[tag=playing,team=cms,gamemode=adventure] at @s run function scenario:cook_mushroom_soups/success

scoreboard players remove Customers: cms_seconds 1

effect clear @a[tag=playing,team=cms] glowing