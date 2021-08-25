scoreboard objectives add fake_round dummy
scoreboard objectives remove fake_points
scoreboard objectives add fake_points dummy

scoreboard players operation $round fake_round = $round round
scoreboard players operation $round fake_round -= $round round_criteria
execute if score $round fake_round matches 0 run function show:check_tie



execute unless score $round fake_round matches 0 run scoreboard players add $round round 1
execute unless score $round fake_round matches 0 run scoreboard players add Round: points 1
execute unless score $round fake_round matches 0 run title @a[tag=playing] subtitle [{"text":"Round ","color":"yellow"},{"score":{"objective":"round","name":"$round"},"color":"gold"}]
execute unless score $round fake_round matches 0 run tag @a remove selected
execute unless score $round fake_round matches 0 run function show:join_selector

