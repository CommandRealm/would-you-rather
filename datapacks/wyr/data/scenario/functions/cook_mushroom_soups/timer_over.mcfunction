execute as @a[tag=playing,team=cms,gamemode=adventure] at @s run function scenario:cook_mushroom_soups/fail
tellraw @a[tag=playing,team=cms] [{"text":"Time is up. The customers don't seem very happy.","color":"red"}]