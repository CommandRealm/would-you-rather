tellraw @a[tag=playing,team=cs,gamemode=adventure,tag=!cs_locked_in] [{"text":"-=- ","color":"gray","bold":true},{"text":"Time is running out!, your answer has been locked in."}]
execute as @a[tag=playing,team=cs,gamemode=adventure,tag=!cs_locked_in] at @s run function scenario:count_sheep/lock_in_answer
