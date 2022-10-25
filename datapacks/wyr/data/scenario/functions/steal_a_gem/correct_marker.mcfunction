# Check if ID matches then drop gem if the player died
tag @e[type=marker,tag=rab_death] remove correct_marker

scoreboard players operation $check rab_id = @s rab_id
execute as @e[type=marker,tag=rab_death] at @s if score @s rab_id = $check rab_id run tag @s add correct_marker

execute at @e[type=marker,tag=rab_death,tag=correct_marker,limit=1] run function scenario:steal_a_gem/drop_gem