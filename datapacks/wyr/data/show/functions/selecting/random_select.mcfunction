scoreboard players set $mod random 2
function random:random
scoreboard players add $rand random 1
scoreboard players operation @s scenario_sel = $rand random
scoreboard players add @s awd_random 1