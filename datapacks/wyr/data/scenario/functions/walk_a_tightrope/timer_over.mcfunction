execute as @a[team=wat,tag=playing,gamemode=adventure] at @s run function scenario:walk_a_tightrope/fail
tellraw @a[team=wat] {"text":"Time is up!","color":"gold"}