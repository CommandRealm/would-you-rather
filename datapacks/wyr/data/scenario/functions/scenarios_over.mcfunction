tag @a[tag=playing_soon] add playing
tag @a[tag=playing_soon] remove playing_soon
scoreboard players set $time showstart 2999
#execute as @a[tag=playing]
function scenario:reset_player
execute store result score $players adjust_points if entity @a[tag=playing]
execute as @a[tag=playing,tag=success] at @s run scoreboard players operation @s adjust_points = @s points_for_win
tag @a remove fan_success
tag @a[tag=success,tag=playing] add fan_success
scoreboard players remove $criteria round 1
scoreboard players add $round round 1



execute if score $round round matches 2 run team modify round suffix [{"text":" 2","color":"gold"}]
execute if score $round round matches 3 run team modify round suffix [{"text":" 3","color":"gold"}]
execute if score $round round matches 4 run team modify round suffix [{"text":" 4","color":"gold"}]
execute if score $round round matches 5 run team modify round suffix [{"text":" 5","color":"gold"}]
execute if score $round round matches 6 run team modify round suffix [{"text":" 6","color":"gold"}]
execute if score $round round matches 7 run team modify round suffix [{"text":" 7","color":"gold"}]
execute if score $round round matches 8 run team modify round suffix [{"text":" 8","color":"gold"}]
execute if score $round round matches 9 run team modify round suffix [{"text":" 9","color":"gold"}]
execute if score $round round matches 10 run team modify round suffix [{"text":" 10","color":"gold"}]
stopsound @a[tag=playing]
kill @e[tag=die]
scoreboard players set $scenario active 0
scoreboard players reset @a spectator
function awards:update_after_scenario

execute as @a[tag=playing,tag=skipped_scenario] at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 10000 0
##remember to update general:rank to make spectators go on spectator team.
execute as @a[gamemode=spectator,tag=!playing] at @s run function general:rank