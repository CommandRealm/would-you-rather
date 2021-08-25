
scoreboard players remove $tutorial rab_timer 1
execute unless score $tutorial rab_timer matches ..0 positioned ^ ^ ^0.25 run function scenario:steal_a_gem/tutorial_tracker
execute positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle dust 1 1 1 1 ~ ~.5 ~ 0 0 0 0 1 force @a
execute positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle item quartz ~ ~.6 ~ 0 0 0 0.05 1 force @a
