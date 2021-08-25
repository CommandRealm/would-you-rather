scoreboard players enable @a[tag=!playing,gamemode=spectator] stop_spectating


execute as @a[tag=!playing,gamemode=spectator,scores={stop_spectating=1..}] at @s run function game:spectator/stop_spectating