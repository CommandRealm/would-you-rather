
execute as @a[tag=playing,team=saru,gamemode=adventure] at @s run function scenario:stop_a_robot_uprising/fail
tellraw @a[tag=playing,team=saru] [{"text":"Time is up! The robots have survived.","color":"gray"}]