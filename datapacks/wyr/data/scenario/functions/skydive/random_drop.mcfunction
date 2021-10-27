# called to set up the random drop

# adding score
scoreboard players add $drop skydive 1

execute if score $drop skydive matches 1..2 run function scenario:skydive/easy_drop
execute if score $drop skydive matches 3..4 run function scenario:skydive/medium_drop
execute if score $drop skydive matches 5.. run function scenario:skydive/hard_drop

# healing players
effect give @a[tag=playing,team=skydive] instant_health 1 5 true