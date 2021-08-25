execute as @a[team=eadl,tag=playing,gamemode=adventure] at @s run function scenario:explore_a_deserted_lab/fail
tellraw @a[team=eadl] [{"text":"Time is up!","color":"dark_aqua"}]