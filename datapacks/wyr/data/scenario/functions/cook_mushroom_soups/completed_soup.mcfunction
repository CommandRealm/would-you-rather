tellraw @a[tag=playing,team=cms] [{"text":"The soup has been completed! Take it to the customer!","color":"gold"}]
execute positioned 39000 65 -3 run tag @p[tag=playing,team=cms,gamemode=adventure] add cms_has_soup
effect give @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] glowing 10000 255 true
title @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] subtitle [{"text":" "}]
title @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] title [{"text":"You have the soup!","color":"gold"}]
scoreboard players set $mod random 4
function random:random
scoreboard players set $order cms_timer 10000
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 20 0.75
execute if score $rand random matches 0 run loot replace entity @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] hotbar.8 loot minecraft:cms/mushroom
execute if score $rand random matches 1 run loot replace entity @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] hotbar.8 loot minecraft:cms/beetroot
execute if score $rand random matches 2 run loot replace entity @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] hotbar.8 loot minecraft:cms/rabbit
execute if score $rand random matches 3 run loot replace entity @a[tag=playing,team=cms,gamemode=adventure,tag=cms_has_soup] hotbar.8 loot minecraft:cms/suspicious

scoreboard players operation $soup_type cms_timer = $rand random

clear @a[tag=playing,team=cms] white_stained_glass_pane
clear @a[tag=playing,team=cms] brown_stained_glass_pane
clear @a[tag=playing,team=cms] red_stained_glass_pane
clear @a[tag=playing,team=cms] light_blue_stained_glass_pane
clear @a[tag=playing,team=cms] yellow_stained_glass_pane
clear @a[tag=playing,team=cms] orange_stained_glass_pane
clear @a[tag=playing,team=cms] lime_stained_glass_pane