execute as @a[tag=playing,team=sas,gamemode=adventure] at @s run function scenario:scale_a_storm/fail
tellraw @a[team=sas] [{"text":"Time is up!","color":"blue"}]