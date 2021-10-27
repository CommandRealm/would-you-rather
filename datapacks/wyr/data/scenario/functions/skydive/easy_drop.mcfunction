# easy drop

# randomization
scoreboard players set $mod random 9
function random:random

# clone
execute if score $rand random matches 0 run clone 5 107 -61 20 140 -46 20059 31 -18
execute if score $rand random matches 1 run clone 5 107 -44 20 140 -29 20059 31 -18
execute if score $rand random matches 2 run clone 5 107 -27 20 140 -12 20059 31 -18
execute if score $rand random matches 3 run clone 22 107 -61 37 140 -46 20059 31 -18
execute if score $rand random matches 4 run clone 22 107 -44 37 140 -29 20059 31 -18
execute if score $rand random matches 5 run clone 22 107 -27 37 140 -12 20059 31 -18
execute if score $rand random matches 6 run clone 39 107 -61 54 140 -46 20059 31 -18
execute if score $rand random matches 7 run clone 39 107 -44 54 140 -29 20059 31 -18
execute if score $rand random matches 8 run clone 39 107 -27 54 140 -12 20059 31 -18



