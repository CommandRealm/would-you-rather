scoreboard players add $lava ol_timer 1
scoreboard players add $tick_alternate ol_timer 1
execute if score $tick_alternate ol_timer matches 5.. run scoreboard players set $tick_alternate ol_timer 0
execute if score $tick_alternate ol_timer matches 0 run scoreboard players set $alternate ol_timer 3
execute if score $tick_alternate ol_timer matches 1 run scoreboard players set $alternate ol_timer 4
execute if score $tick_alternate ol_timer matches 2..4 run scoreboard players set $alternate ol_timer 5