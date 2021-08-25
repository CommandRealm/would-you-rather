execute as @a[tag=playing,gamemode=adventure,team=rap] at @s run function scenario:rescue_royalty/fail
tellraw @a[team=rap] [{"text":"Time is up!","color":"dark_red"}]