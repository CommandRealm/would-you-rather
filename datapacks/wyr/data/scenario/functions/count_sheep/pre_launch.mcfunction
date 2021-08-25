scoreboard players set $mod random 7
function random:random
scoreboard players operation $launch_left cs_sheep = $rand random


scoreboard players operation $calculate cs_sheep = $sheep cs_sheep
scoreboard players operation $calculate cs_sheep -= $sheep_shown cs_sheep

execute if score $launch_left cs_sheep > $calculate cs_sheep run function scenario:count_sheep/remove_launches