# hard drop

# randomization
scoreboard players set $mod random 6
function random:random

# clone
execute if score $rand random matches 0 run clone 56 107 24 71 140 39 20059 31 -18
execute if score $rand random matches 1 run clone 56 107 7 71 140 22 20059 31 -18
execute if score $rand random matches 2 run clone 56 107 -10 71 140 5 20059 31 -18
execute if score $rand random matches 3 run clone 56 107 -27 71 140 -12 20059 31 -18
execute if score $rand random matches 4 run clone 56 107 -44 71 140 -29 20059 31 -18
execute if score $rand random matches 5 run clone 56 107 -61 71 140 -46 20059 31 -18

