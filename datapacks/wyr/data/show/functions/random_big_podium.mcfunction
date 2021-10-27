# called to move us to a random big podium

scoreboard players set $mod random 2
function random:random

execute if score $rand random matches 0 run tp @s -906 72 6
execute if score $rand random matches 1 run tp @s -964 72 6