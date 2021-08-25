scoreboard players set $time cs_timer 500
scoreboard players set $cs active_scenario 1
scoreboard players set $time cs_sheep 0
scoreboard players set $sheep_shown cs_sheep -1
scoreboard players set $launch cs_sheep 0
function scenario:count_sheep/active
tag @a remove cs_playing
tag @a[team=cs,tag=playing] add cs_playing
tag @a remove cs_locked_in
scoreboard players set $look_up cs_timer 0
title @a[tag=playing,team=cs] times 0 20 5
scoreboard players set $fake cs_sheep 0
effect give @a[tag=playing,team=cs] invisibility 100000 255 true

scoreboard players set $test cs_sheep 0