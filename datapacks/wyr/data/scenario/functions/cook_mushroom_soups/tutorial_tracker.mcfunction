
scoreboard players remove $tutorial cms_timer 1
execute unless score $tutorial cms_timer matches ..0 positioned ^ ^ ^0.25 run function scenario:cook_mushroom_soups/tutorial_tracker
execute positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force @a
execute positioned ~ ~.25 ~ positioned ^ ^ ^0.5 run particle item warped_fungus ~ ~.1 ~ 0 0 0 0.05 1 force @a