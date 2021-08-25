scoreboard players remove $tutorial rap_timer 1
execute if score $tutorial rap_timer matches 1.. positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle dust 1 0 0.75 1 ~ ~ ~ 0 0 0 0 1 force
execute if score $tutorial rap_timer matches 1.. positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle item pink_wool ~ ~.1 ~ 0 0 0 0.05 1 force
execute if score $tutorial rap_timer matches 1.. positioned ^ ^ ^1 run function scenario:rescue_royalty/tutorial_tracker