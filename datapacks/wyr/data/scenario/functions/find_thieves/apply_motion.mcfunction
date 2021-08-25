scoreboard players set $mod random 100000
function random:random
scoreboard players operation $motion ft_timer = $rand random

scoreboard players set $mod random 2
function random:random
execute if score $rand random matches 0 run scoreboard players operation $motion ft_timer *= $-1 number

execute store result entity @s Motion[0] double 0.00001 run scoreboard players get $motion ft_timer

scoreboard players set $mod random 100000
function random:random
scoreboard players operation $motion ft_timer = $rand random

scoreboard players set $mod random 2
function random:random
execute if score $rand random matches 0 run scoreboard players operation $motion ft_timer *= $-1 number
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get $motion ft_timer