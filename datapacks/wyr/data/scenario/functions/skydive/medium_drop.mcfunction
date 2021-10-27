# medium drop

# randomization
scoreboard players set $mod random 9
function random:random

# clone
execute if score $rand random matches 0 run clone 5 107 -10 20 140 5 20059 31 -18
execute if score $rand random matches 1 run clone 5 107 7 20 140 22 20059 31 -18
execute if score $rand random matches 2 run clone 5 107 24 20 140 39 20059 31 -18
execute if score $rand random matches 3 run clone 22 107 -10 37 140 5 20059 31 -18
execute if score $rand random matches 4 run clone 22 107 7 37 140 22 20059 31 -18
execute if score $rand random matches 5 run clone 22 107 24 37 140 39 20059 31 -18
execute if score $rand random matches 6 run clone 39 107 -10 54 140 5 20059 31 -18
execute if score $rand random matches 7 run clone 39 107 7 54 140 22 20059 31 -18
execute if score $rand random matches 8 run clone 39 107 24 54 140 39 20059 31 -18



