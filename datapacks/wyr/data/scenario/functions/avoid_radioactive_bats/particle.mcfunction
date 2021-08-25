scoreboard players remove $particle arb_timer 1
particle dust 0.5 1 0.25 1 ~ ~ ~ 0 0 0 0 1
execute positioned ~ ~-1 ~ if score $particle arb_timer matches 1.. run function scenario:avoid_radioactive_bats/particle