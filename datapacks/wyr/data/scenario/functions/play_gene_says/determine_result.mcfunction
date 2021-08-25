scoreboard players set $mod random 2
function random:random
execute unless score $says pgs_timer matches 2 run scoreboard players operation $says pgs_timer = $rand random
execute if score $says pgs_timer matches 2 run scoreboard players set $says pgs_timer 1