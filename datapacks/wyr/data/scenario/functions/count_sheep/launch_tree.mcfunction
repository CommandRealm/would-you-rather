scoreboard players set $mod random 12
function random:random
scoreboard players operation $rand cs_sheep = $rand random
execute if score $rand cs_sheep matches 0..7 run scoreboard players add $test cs_sheep 1
execute if score $rand cs_sheep matches 0..4 run function scenario:count_sheep/launch
execute if score $rand cs_sheep matches 5..7 run function scenario:count_sheep/launch_baby
execute if score $rand cs_sheep matches 8..9 run function scenario:count_sheep/launch_fake




scoreboard players set $mod random 5
function random:random
execute if score $rand random matches 0..1 run scoreboard players set $launch cs_sheep 35
execute if score $rand random matches 2 run scoreboard players set $launch cs_sheep 40
execute if score $rand random matches 3 run scoreboard players set $launch cs_sheep 45
execute if score $rand random matches 4 run scoreboard players set $launch cs_sheep 47


##