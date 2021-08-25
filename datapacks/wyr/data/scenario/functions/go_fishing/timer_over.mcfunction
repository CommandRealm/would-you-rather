execute as @a[team=gf,gamemode=adventure,tag=playing] at @s run function scenario:go_fishing/fail
tellraw @a[tag=playing,team=gf] [{"text":"Time is up. The fish will swim on.","color":"blue"}]