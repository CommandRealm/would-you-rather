
scoreboard players remove $tutorial bam_timer 1
execute unless score $tutorial bam_timer matches ..0 positioned ^ ^ ^0.25 run function scenario:become_a_miner/tutorial_tracker
execute positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force @a
execute positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle item diamond ~ ~.1 ~ 0 0 0 0.05 1 force @a
